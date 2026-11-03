"""Explicit doctor-authorized scan removal with durable anti-resurrection fences.

Lock order is portal.lock then store.lock. A pending record is persisted before
publication metadata or task files are removed; failed deletions must be retried.
"""
import copy
import json
import os
from pathlib import Path
import re
import stat
import uuid


IDENTIFIER = re.compile(r'[A-Za-z0-9][A-Za-z0-9_.-]{0,79}\Z')


def canonical_uuid(value):
    try:
        return isinstance(value, str) and str(uuid.UUID(value)) == value
    except (ValueError, AttributeError):
        return False


def sync_directory(path):
    if os.name == 'posix':
        fd = os.open(str(path), os.O_RDONLY | getattr(os, 'O_DIRECTORY', 0))
        try:
            os.fsync(fd)
        finally:
            os.close(fd)


def safe_task_files(root, task_id):
    """Only the service's flat UUID directory is removable; never traverse links."""
    root = Path(root).resolve()
    if not canonical_uuid(task_id):
        raise ValueError('Invalid deletion task ID')
    folder = root / task_id
    if folder.is_symlink() or folder.resolve() != folder:
        raise ValueError('Linked task directories cannot be deleted')
    if not folder.exists():
        return folder, []
    if not stat.S_ISDIR(folder.lstat().st_mode):
        raise ValueError('Task path is not a directory')
    files = list(folder.iterdir())
    for path in files:
        if (path.is_symlink() or path.resolve() != path
                or not stat.S_ISREG(path.lstat().st_mode)):
            raise ValueError('Only regular files inside the task may be deleted')
    return folder, files


def remove_task_files(root, task_id):
    folder, files = safe_task_files(root, task_id)
    if not folder.exists():
        return
    # Keep status until last for inspection after a partial I/O failure.
    for path in sorted(files, key=lambda p: (p.name == 'status.json', p.name)):
        if path.is_symlink() or path.resolve() != path or not stat.S_ISREG(path.lstat().st_mode):
            raise ValueError('Task contents changed during deletion')
        path.unlink()
    folder.rmdir()
    sync_directory(Path(root))


class ScanDeletion:
    def __init__(self, store, error_type):
        self.store, self.error_type = store, error_type
        self.ledger_path = store.root / 'deleted-scans.json'
        self.records = {}
        if self.ledger_path.exists():
            if self.ledger_path.is_symlink():
                raise ValueError('Linked deletion ledger')
            data = json.loads(self.ledger_path.read_text('utf-8'))
            if not isinstance(data, dict) or data.get('version') != 1 or not isinstance(data.get('records'), dict):
                raise ValueError('Invalid deletion ledger; refusing unsafe recovery')
            for scan_id, record in data['records'].items():
                if (not IDENTIFIER.fullmatch(scan_id) or not isinstance(record, dict)
                        or not isinstance(record.get('case_id'), str)
                        or record.get('state') not in ('pending', 'complete')
                        or not isinstance(record.get('task_ids'), list)
                        or not all(canonical_uuid(t) for t in record['task_ids'])):
                    raise ValueError('Invalid deletion record; refusing unsafe recovery')
            self.records = data['records']

    def fail(self, status, code, message):
        raise self.error_type(status, code, message)

    def persist(self):
        path = self.ledger_path.with_name(self.ledger_path.name + '.writing-' + uuid.uuid4().hex)
        with path.open('x', encoding='utf-8') as stream:
            json.dump({'version': 1, 'records': self.records}, stream, ensure_ascii=False)
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(str(path), str(self.ledger_path))
        sync_directory(self.store.root)

    def task_deleted(self, task_id):
        return any(task_id in r['task_ids'] for r in self.records.values())

    def check_task(self, task_id):
        if self.task_deleted(task_id):
            self.fail(410, 'task_deleted', 'Task was explicitly deleted')

    def check_create(self, metadata):
        self.check_task(metadata['task_id'])
        if metadata['scan_id'] in self.records:
            self.fail(410, 'scan_deleted', 'Scan was explicitly deleted; import as a new scan')
        if any(r['case_id'] == metadata['case_id'] and r['state'] == 'pending' for r in self.records.values()):
            self.fail(409, 'deletion_pending', 'Retry the pending deletion before reusing this case ID')

    def inventory(self):
        tasks = {}
        for folder in self.store.root.iterdir():
            if not canonical_uuid(folder.name) or self.task_deleted(folder.name):
                continue
            if folder.is_symlink() or folder.resolve() != folder or not folder.is_dir():
                self.fail(409, 'unsafe_task_storage', 'Task storage needs manual inspection')
            path = folder / 'status.json'
            if path.is_symlink() or not path.is_file():
                self.fail(409, 'incomplete_task_storage', 'Cannot establish scan ownership from task storage')
            value = json.loads(path.read_text('utf-8'))
            if (not isinstance(value, dict) or value.get('task_id') != folder.name
                    or not isinstance(value.get('case_id'), str)
                    or not isinstance(value.get('scan_id'), str)):
                self.fail(409, 'invalid_task_storage', 'Cannot establish scan ownership from task storage')
            tasks[folder.name] = value
        return tasks

    def delete(self, portal, scan_id, value):
        if (not IDENTIFIER.fullmatch(scan_id) or not isinstance(value, dict)
                or not isinstance(value.get('case_id'), str) or not 1 <= len(value['case_id']) <= 80
                or not value['case_id'].isprintable() or not value['case_id'].strip()):
            self.fail(400, 'invalid_deletion', 'A scan identifier and matching case_id are required')
        case_id = value['case_id']
        with portal.lock, self.store.lock:
            record = self.records.get(scan_id)
            if record and record['case_id'] != case_id:
                self.fail(409, 'case_mismatch', 'Scan does not belong to this case')
            tasks = self.inventory()
            targets = {t for t, s in tasks.items() if s['scan_id'] == scan_id}
            if any(tasks[t]['case_id'] != case_id for t in targets):
                self.fail(409, 'case_mismatch', 'Scan does not belong to this case')
            if record:
                targets.update(record['task_ids'])
            # Even an absent scan gets a tombstone: delayed create requests must
            # not resurrect it after the host has received deletion confirmation.
            if (self.store.active in targets or any(k[0] in targets for k in self.store.uploading)
                    or any(tasks[t].get('status') == 'running'
                           or tasks[t].get('classification', {}).get('status') == 'running'
                           or tasks[t].get('segmentation', {}).get('status') == 'running'
                           for t in targets if t in tasks)):
                self.fail(409, 'scan_busy', 'Stop or finish analysis and uploads before deleting this scan')
            if targets and self.store.pl_health().get('recovery_required'):
                self.fail(409, 'pl_recovery_required', 'Reboot to recover uncertain hardware state before deletion')
            for task_id in targets:
                safe_task_files(self.store.root, task_id)
            # Other pending deletions keep the case occupied until each succeeds.
            case_empty = not any(s['case_id'] == case_id and t not in targets for t, s in tasks.items())
            case_empty = case_empty and not any(s != scan_id and r['case_id'] == case_id
                and r['state'] == 'pending' for s, r in self.records.items())
            record = {'case_id': case_id, 'task_ids': sorted(targets), 'state': 'pending'}
            self.records[scan_id] = record
            self.persist()
            # Copy before persistence so failure cannot leave stale publications
            # available through an old in-memory snapshot.
            updated = copy.deepcopy(portal.state)
            for task_id in targets:
                updated['tasks'].pop(task_id, None)
            key = portal.case_key(case_id)
            if case_empty:
                # Unknown dangling publications are not silently removed.
                if any(item.get('case_key') == key for item in updated['tasks'].values()):
                    self.fail(409, 'publication_conflict', 'Case still has an untracked publication')
                updated['cases'].pop(key, None)
                portal.invalidate(key)
            portal.state = updated
            portal.persist()
            sync_directory(portal.root)
            current_path = self.store.root / 'current.json'
            current = json.loads(current_path.read_text('utf-8')) if current_path.exists() else {}
            if self.store.current in targets or current.get('task_id') in targets:
                idle = {'status': 'idle', 'model_version': current.get('model_version'),
                        'execution_backend': self.store.execution_backend}
                temporary = current_path.with_name('current.json.writing-' + uuid.uuid4().hex)
                with temporary.open('x', encoding='utf-8') as stream:
                    json.dump(idle, stream)
                    stream.flush()
                    os.fsync(stream.fileno())
                os.replace(str(temporary), str(current_path))
                self.store.current = None
            for task_id in targets:
                remove_task_files(self.store.root, task_id)
                self.store.created_monotonic.pop(task_id, None)
            record['state'] = 'complete'
            try:
                self.persist()
            except OSError:
                record['state'] = 'pending'
                raise
            return {'deleted': True, 'scan_id': scan_id, 'case_id': case_id, 'case_empty': bool(case_empty)}
