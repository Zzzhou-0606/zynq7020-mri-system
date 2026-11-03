"""Local append-only scan snapshots; each worker uses its own SQLite connection."""
from contextlib import contextmanager
from datetime import datetime, timezone
import json
import re
from pathlib import Path
import sqlite3
import uuid
import nibabel as nib
import numpy as np
from host.input.import_scan import load_t88, load_native
from host.cases.identity import identities


def now():
    return datetime.now(timezone.utc).isoformat()


class CaseStore:
    def __init__(self, root):
        self.root = Path(root).resolve()
        self.root.mkdir(parents=True, exist_ok=True)
        self.database = self.root / 'cases.sqlite3'
        with self.connect() as db:
            db.executescript('''
              PRAGMA journal_mode=WAL;
              CREATE TABLE IF NOT EXISTS cases(case_id TEXT PRIMARY KEY, created TEXT NOT NULL);
              CREATE TABLE IF NOT EXISTS scans(scan_id TEXT PRIMARY KEY, case_id TEXT NOT NULL,
                created TEXT NOT NULL, metadata TEXT NOT NULL, FOREIGN KEY(case_id) REFERENCES cases(case_id));
              CREATE TABLE IF NOT EXISTS tasks(task_id TEXT PRIMARY KEY, scan_id TEXT NOT NULL,
                created TEXT NOT NULL, backend TEXT NOT NULL, classification TEXT NOT NULL,
                segmentation TEXT NOT NULL, FOREIGN KEY(scan_id) REFERENCES scans(scan_id));
              CREATE TABLE IF NOT EXISTS deleted_scans(scan_id TEXT PRIMARY KEY,
                deleted_at TEXT NOT NULL, FOREIGN KEY(scan_id) REFERENCES scans(scan_id));
              CREATE TABLE IF NOT EXISTS scan_fingerprints(scan_id TEXT PRIMARY KEY,
                t88_key TEXT NOT NULL, input_key TEXT NOT NULL);
              CREATE INDEX IF NOT EXISTS scan_input_key ON scan_fingerprints(input_key);
              CREATE TABLE IF NOT EXISTS reusable_case_numbers(case_id TEXT PRIMARY KEY);
              CREATE TABLE IF NOT EXISTS remote_scan_deletions(scan_id TEXT NOT NULL,
                address TEXT NOT NULL, confirmed TEXT NOT NULL, PRIMARY KEY(scan_id,address));
            ''')

    @contextmanager
    def connect(self):
        with sqlite3.connect(self.database, timeout=30) as db:
            db.row_factory = sqlite3.Row
            db.execute('PRAGMA foreign_keys=ON')
            yield db

    def import_scan(self, case_id, image_path, mask_path, native_path=None, *, confirmed_grid=False):
        case_id = case_id.strip() if case_id is not None else None
        if case_id is not None and (not case_id or len(case_id) > 80 or any(ord(c) < 32 for c in case_id)):
            raise ValueError('Case ID must contain 1 to 80 printable characters')
        volume, mask, metadata = load_t88(image_path, mask_path, confirmed_grid=confirmed_grid)
        native = load_native(native_path) if native_path else None
        native_id = re.search(r'OAS1_\d{4}_MR\d+',str(native_path)) if native_path else None
        if native_id and metadata['session_id'] and native_id.group() != metadata['session_id']:
            raise ValueError('T88 and native MRI belong to different OASIS sessions')
        self._index_existing_inputs()
        t88_key, input_key = identities(volume, mask, native)
        with self.connect() as db:
            db.execute('BEGIN IMMEDIATE')
            active = "s.scan_id NOT IN (SELECT scan_id FROM deleted_scans)"
            duplicate = db.execute('SELECT s.scan_id FROM scans s JOIN scan_fingerprints f USING(scan_id) WHERE f.input_key=? AND '+active, (input_key,)).fetchone()
            if duplicate:
                return duplicate['scan_id']
            if case_id is None:
                related = db.execute('SELECT s.case_id FROM scans s JOIN scan_fingerprints f USING(scan_id) WHERE f.t88_key=? AND '+active+' ORDER BY s.created LIMIT 1', (t88_key,)).fetchone()
                if not related and metadata.get('session_id'):
                    related = next((r for r in db.execute('SELECT * FROM scans s WHERE '+active)
                                    if json.loads(r['metadata']).get('session_id') == metadata['session_id']), None)
                if related:
                    case_id = related['case_id']
                else:
                    free = db.execute('SELECT case_id FROM reusable_case_numbers ORDER BY CAST(case_id AS INTEGER) LIMIT 1').fetchone()
                    if free:
                        case_id = free['case_id']
                        db.execute('DELETE FROM reusable_case_numbers WHERE case_id=?',(case_id,))
                        # Old hidden scans remain recoverable as files, but must
                        # never be restored under a number now assigned anew.
                        db.execute('UPDATE cases SET created=? WHERE case_id=?',(now(),case_id))
                    else:
                        used = [int(r[0]) for r in db.execute('SELECT case_id FROM cases') if re.fullmatch(r'[0-9]+',r[0])]
                        case_id = f'{max(used, default=0)+1:03d}'
            scan_id = str(uuid.uuid4())
            folder = self.root / 'scans' / scan_id
            folder.mkdir(parents=True, exist_ok=False)
            np.savez_compressed(folder / 'input.npz', volume=volume, mask=mask)
            if native is not None:
                nib.save(native, folder / 'native.nii.gz')
                metadata['native_source'] = str(Path(native_path).resolve())
            metadata['has_native'] = native is not None
            (folder / 'import.json').write_text(json.dumps(metadata, ensure_ascii=False, indent=2), encoding='utf-8')
            db.execute('INSERT OR IGNORE INTO cases VALUES (?,?)', (case_id, now()))
            db.execute('DELETE FROM reusable_case_numbers WHERE case_id=?',(case_id,))
            db.execute('INSERT INTO scans VALUES (?,?,?,?)', (scan_id, case_id, now(), json.dumps(metadata)))
            db.execute('INSERT INTO scan_fingerprints VALUES (?,?,?)',(scan_id,t88_key,input_key))
        return scan_id

    def _index_existing_inputs(self):
        with self.connect() as db:
            rows = db.execute('SELECT scan_id FROM scans WHERE scan_id NOT IN (SELECT scan_id FROM scan_fingerprints) AND scan_id NOT IN (SELECT scan_id FROM deleted_scans)').fetchall()
        for row in rows:
            folder = self.root/'scans'/row['scan_id']
            if not (folder/'input.npz').is_file():
                continue
            with np.load(folder/'input.npz',allow_pickle=False) as data:
                native = nib.load(folder/'native.nii.gz') if (folder/'native.nii.gz').is_file() else None
                t88, key = identities(data['volume'],data['mask'],native)
            with self.connect() as db:
                db.execute('INSERT OR IGNORE INTO scan_fingerprints VALUES (?,?,?)',(row['scan_id'],t88,key))

    def source_match(self, image, mask, native=None):
        paths = [str(Path(p).resolve()).casefold() if p else '' for p in (image,mask,native)]
        session = re.search(r'OAS1_\d{4}_MR\d+',str(image),re.I)
        for row in self.scans():
            meta = row['metadata']
            existing = [str(meta.get(k,'')).casefold() for k in ('image_source','mask_source','native_source')]
            if paths == existing or (session and str(meta.get('session_id','')).upper() == session.group().upper()):
                return {'case_id':row['case_id'],'scan_id':row['scan_id']}
        return None

    def scans(self, case_id=None):
        with self.connect() as db:
            sql = 'SELECT * FROM scans WHERE scan_id NOT IN (SELECT scan_id FROM deleted_scans)' + (' AND case_id=?' if case_id is not None else '') + ' ORDER BY created DESC'
            rows = db.execute(sql, (case_id,) if case_id is not None else ()).fetchall()
        return [dict(row, metadata=json.loads(row['metadata'])) for row in rows]

    def scan(self, scan_id):
        with self.connect() as db:
            row = db.execute('SELECT * FROM scans WHERE scan_id=? AND scan_id NOT IN (SELECT scan_id FROM deleted_scans)', (scan_id,)).fetchone()
        if row is None:
            raise KeyError(scan_id)
        return dict(row, metadata=json.loads(row['metadata']))

    def deletion_plan(self, scan_id):
        selected = self.scan(scan_id)
        case_id = selected['case_id']
        with self.connect() as db:
            active = db.execute('SELECT scan_id FROM scans WHERE case_id=? AND scan_id NOT IN (SELECT scan_id FROM deleted_scans)',(case_id,)).fetchall()
            last = len(active) == 1
            generation = db.execute('SELECT created FROM cases WHERE case_id=?',(case_id,)).fetchone()[0]
            rows = db.execute('SELECT * FROM scans WHERE case_id=? AND created>=? ORDER BY created',(case_id,generation)).fetchall() if last else [selected]
        targets=[]
        for row in sorted(rows,key=lambda r:r['scan_id']==scan_id):
            tasks=self.tasks(row['scan_id'])
            if any(t[k].get('status') in ('pending','running','connection_lost') for t in tasks for k in ('classification','segmentation')):
                raise ValueError('这次扫描仍有未结束的任务，请完成或重连收取结果后再删除。')
            for address in sorted({t['backend'] for t in tasks if t['backend'].startswith(('http://','https://'))}):
                targets.append(dict(scan_id=row['scan_id'],case_id=case_id,address=address,
                    task_ids=[t['task_id'] for t in tasks if t['backend']==address]))
        return dict(case_id=case_id,last_scan=last,targets=targets)

    def record_remote_deletion(self, scan_id, address):
        with self.connect() as db:
            db.execute('INSERT OR REPLACE INTO remote_scan_deletions VALUES (?,?,?)',(scan_id,address,now()))

    def delete_scan(self, scan_id, *, release_number=False):
        """Remove one scan from the active library, preserving its data for recovery."""
        with self.connect() as db:
            db.execute('BEGIN IMMEDIATE')
            row = db.execute('SELECT case_id FROM scans WHERE scan_id=?', (scan_id,)).fetchone()
            if row is None:
                raise KeyError(scan_id)
            if db.execute('SELECT 1 FROM deleted_scans WHERE scan_id=?', (scan_id,)).fetchone():
                return
            for task in db.execute('SELECT classification,segmentation FROM tasks WHERE scan_id=?', (scan_id,)):
                if any(json.loads(task[key]).get('status') in ('pending','running','connection_lost')
                       for key in ('classification','segmentation')):
                    raise ValueError('这次扫描仍有未结束的任务，请完成或重连收取结果后再删除。')
            db.execute('INSERT INTO deleted_scans VALUES (?,?)', (scan_id, now()))
            if release_number and re.fullmatch(r'[0-9]+',row['case_id']):
                if not db.execute('SELECT 1 FROM scans WHERE case_id=? AND scan_id NOT IN (SELECT scan_id FROM deleted_scans)',(row['case_id'],)).fetchone():
                    db.execute('INSERT OR IGNORE INTO reusable_case_numbers VALUES (?)',(row['case_id'],))

    def restore_scan(self, scan_id):
        """Administrative recovery of a soft-deleted scan without rewriting history."""
        with self.connect() as db:
            if db.execute('SELECT 1 FROM remote_scan_deletions WHERE scan_id=?',(scan_id,)).fetchone():
                raise ValueError('该扫描已从开发板删除，请重新导入原始影像。')
            row=db.execute('SELECT s.created AS scan_created,c.created AS case_created,s.case_id FROM scans s JOIN cases c USING(case_id) WHERE s.scan_id=?',(scan_id,)).fetchone()
            if row and row['scan_created']<row['case_created']:
                raise ValueError('原病例编号已被重新使用，请重新导入影像。')
            if row:db.execute('DELETE FROM reusable_case_numbers WHERE case_id=?',(row['case_id'],))
            db.execute('DELETE FROM deleted_scans WHERE scan_id=?', (scan_id,))

    def folder(self, scan_id):
        self.scan(scan_id)  # do not accept arbitrary path fragments
        return self.root / 'scans' / scan_id

    def input(self, scan_id):
        with np.load(self.folder(scan_id) / 'input.npz', allow_pickle=False) as data:
            return data['volume'], data['mask']

    def new_task(self, scan_id, backend):
        task_id = str(uuid.uuid4())
        with self.connect() as db:
            db.execute('BEGIN IMMEDIATE')
            if not db.execute('SELECT 1 FROM scans WHERE scan_id=? AND scan_id NOT IN (SELECT scan_id FROM deleted_scans)', (scan_id,)).fetchone():
                raise KeyError(scan_id)
            db.execute('INSERT INTO tasks VALUES (?,?,?,?,?,?)', (task_id, scan_id, now(), backend,
                json.dumps({'status':'pending'}), json.dumps({'status':'pending'})))
        return task_id

    def update(self, task_id, component, payload):
        if component not in ('classification', 'segmentation'):
            raise ValueError('Invalid task component')
        if component == 'segmentation':
            payload = dict(payload)
            for key in ('image', 'labels'):
                if payload.get(key):
                    path = Path(payload[key])
                    if path.is_absolute():
                        try:
                            payload[key] = '@case/' + path.resolve().relative_to(self.root).as_posix()
                        except ValueError:
                            pass  # Preserve legacy external paths without guessing.
        with self.connect() as db:
            cursor = db.execute('UPDATE tasks SET '+component+'=? WHERE task_id=?',
                                (json.dumps(payload, ensure_ascii=False, allow_nan=False), task_id))
            if not cursor.rowcount:
                raise KeyError(task_id)

    def tasks(self, scan_id):
        with self.connect() as db:
            rows = db.execute('SELECT * FROM tasks WHERE scan_id=? ORDER BY created DESC', (scan_id,)).fetchall()
        tasks = [dict(row, classification=json.loads(row['classification']),
                      segmentation=json.loads(row['segmentation'])) for row in rows]
        for task in tasks:
            for key in ('image', 'labels'):
                value = task['segmentation'].get(key)
                if isinstance(value, str) and value.startswith('@case/'):
                    path = (self.root / value[6:]).resolve()
                    path.relative_to(self.root)
                    task['segmentation'][key] = str(path)
        return tasks
