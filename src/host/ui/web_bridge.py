"""Small local-only WebView API; all inference stays in the existing workflow."""
import base64
from concurrent.futures import ThreadPoolExecutor
from functools import wraps
from io import BytesIO
import json
from pathlib import Path
import threading
import time
import uuid

from host.client.board import BoardClient
from host.configs.settings import Settings, normalize_address
from host.publication_state import PublicationState
from host.visualization.slices import SliceViewer
from host.workflows.analysis import AnalysisWorkflow
from host.workflows.cancellation import StopRequested


def response(method):
    @wraps(method)
    def call(*args, **kwargs):
        try:
            return {'ok': True, 'data': method(*args, **kwargs)}
        except Exception as error:
            return {'ok': False, 'error': str(error)}
    return call


class WebBridge:
    def __init__(self, store):
        self._store = store
        self._settings = Settings(store.root)
        self._lock = threading.RLock()
        self._image_lock = threading.Lock()
        self._window = None
        self._busy = False
        self._closing = False
        self._revision = 0
        self._message = self._settings.warning or '就绪'
        self._level = 'info'
        self._connection = {'status': 'disconnected', 'address': '', 'backend': ''}
        self._viewer = None
        self._viewer_key = None
        self._imported_scan = None
        self._portal_operation = None
        self._publications = PublicationState(store.root)
        self._publication_revision = 0
        self._folder_preview = {}
        self._batch = None
        self._single_accepting = False
        self._single_config = None
        self._stop_event = threading.Event()
        self._stoppable = False
        self._workflow = AnalysisWorkflow(store, self._notify, self._stop_event)

    def _notify(self, event):
        with self._lock:
            self._revision += 1
            self._message = event.get('error') or event.get('message') or {
                'classification': '分类状态已更新', 'segmentation': '分割状态已更新',
                'task': '分析任务已建立'}.get(event.get('component'), '任务状态已更新')
            self._level = 'error' if event.get('error') else 'info'

    def _start(self, work, *, stoppable=False):
        with self._lock:
            if self._closing:
                raise ValueError('窗口正在关闭。')
            if self._busy:
                raise ValueError('已有任务正在运行，请等待完成。')
            self._busy = True
            self._stoppable = stoppable
            self._stop_event.clear()
            self._revision += 1
        def run():
            try:
                work()
            except StopRequested:
                pass
            except Exception as error:
                self._notify({'error': str(error)})
            finally:
                with self._lock:
                    self._busy = False
                    self._single_accepting = False
                    self._single_config = None
                    self._stoppable = False
                    if self._stop_event.is_set():
                        self._message = '已停止。已完成结果保留，未完成病例可重新选择分析；连接中断的板端任务需先收取结果。'
                        self._level = 'info'
                    self._revision += 1
        threading.Thread(target=run, daemon=True, name='mri-webui-job').start()
        return {'started': True}

    @response
    def stop(self):
        with self._lock:
            if not self._busy or not self._stoppable:
                return {'requested': False}
            self._stop_event.set()
            self._message = '正在停止：取消本机分割和后续队列，等待已提交的板端分类或网络请求结束。'
            self._revision += 1
        return {'requested': True}

    def _task(self, scan_id, task_id):
        self._store.scan(scan_id)
        for task in self._store.tasks(scan_id):
            if task['task_id'] == task_id:
                return task
        raise ValueError('所选任务不属于当前扫描。')

    @response
    def get_state(self, scan_id=None):
        with self._lock:
            state = dict(busy=self._busy, revision=self._revision, message=self._message,
                         level=self._level, connection=dict(self._connection),
                         imported_scan=self._imported_scan)
            state.update(can_stop=self._busy and self._stoppable, stopping=self._busy and self._stoppable and self._stop_event.is_set())
            if state['stopping']:
                state['message'] = '正在停止：取消本机分割和后续队列，等待已提交的板端分类或网络请求结束。'
            state['portal_operation'] = (self._portal_operation['id']
                                         if self._portal_operation else None)
            state['publication_revision'] = self._publication_revision
            state['batch'] = json.loads(json.dumps(self._batch)) if self._batch else None
            operation = self._portal_operation
            state['portal_progress'] = (dict(kind=operation['kind'], task_id=operation['context'].get('task_id'),
                elapsed=int(time.monotonic()-operation['started']), code_ready=bool(operation.get('published')),
                **operation.get('progress', {})) if operation and operation['status'] == 'pending' else None)
        state.update(settings=self._settings.snapshot(), scans=self._store.scans(),
                     data_root=str(self._store.root))
        state['scan'] = next((row for row in state['scans'] if row['scan_id'] == scan_id), None)
        state['tasks'] = self._store.tasks(scan_id) if state['scan'] else []
        for task in state['tasks']:
            if task['segmentation'].get('status') == 'running':
                from host.segmentation.progress import read_progress
                path = self._store.root/'scans'/scan_id/('segmentation-'+task['task_id'])/'fastsurfer.log'
                try:
                    task['segmentation']['progress'] = read_progress(path)
                except OSError:
                    pass
        entries, blocked = self._queue_entries(state['scans'])
        state['queue'] = dict(rows=entries, pending_count=sum(r['selectable'] for r in entries), blocked_reason=blocked)
        with self._lock:
            selected_syncing = any(r['scan_id'] == scan_id and r['status'] in ('sync_wait','publishing') for r in entries)
            state['can_analyze'] = (not self._closing and not blocked and not selected_syncing
                and (not self._busy and not self._portal_operation
                     or self._busy and self._single_accepting and not self._stop_event.is_set()))
        return state

    def _batch_update(self, entry, **values):
        with self._lock:
            entry.update(values)
            self._revision += 1

    def _queue_entries(self, scans=None):
        rows, blocked = [], ''
        with self._lock:
            active = {r.get('scan_id'):dict(r) for r in (self._batch or {}).get('rows', [])} if (self._batch or {}).get('running') else {}
        for scan in reversed(self._store.scans() if scans is None else scans):
            tasks = self._store.tasks(scan['scan_id'])
            latest = tasks[0] if tasks else None
            unfinished = any(t[k].get('status') in ('pending','running','connection_lost') for t in tasks for k in ('classification','segmentation'))
            if unfinished:
                blocked = '病例库存在未结束的任务，请先重连收取结果。'
            tracked = active.get(scan['scan_id'])
            syncing = tracked and tracked.get('status') in ('sync_wait','publishing')
            complete = latest and all(latest[k].get('status') == 'complete' for k in ('classification','segmentation'))
            if complete and not syncing:
                continue
            meta = scan['metadata']
            row = dict(scan_id=scan['scan_id'], case_id=scan['case_id'],
                       source=meta.get('session_id') or Path(meta.get('image_source','')).parent.name or '本地扫描',
                       status='interrupted' if unfinished else 'partial' if latest else 'imported',
                       task_id=latest['task_id'] if latest else None,
                       selectable=not unfinished and not syncing)
            if latest:
                row['error'] = '；'.join(latest[k].get('error','') for k in ('classification','segmentation') if latest[k].get('error'))
            if tracked and tracked.get('status') in ('analyzing','sync_wait','publishing'):
                row.update(tracked, selectable=False)
            rows.append(row)
        return rows, blocked

    def _batch_result(self, entry, task, reference):
        complete = all(task[key].get('status') == 'complete' for key in ('classification','segmentation'))
        access = self._publications.get(entry['scan_id'], task['task_id']) if not reference else {}
        published = reference or (access.get('status') == 'published' and not access.get('uncertain') and access.get('image_status') not in ('failed','stopped'))
        errors = [task[key].get('error') or ('分类未完成' if key == 'classification' else '分割未完成')
                  for key in ('classification','segmentation') if task[key].get('status') != 'complete']
        if not published and task['classification'].get('status') == 'complete':
            errors.append('发布或完整影像同步未完成，可在访问码页重试。')
        self._batch_update(entry, status='complete' if complete and published else 'partial',
                           error='；'.join(errors), reference=reference, task_id=task['task_id'])

    def _run_batch(self, entries, address, reference, device, *, single=False):
        board = None if reference else BoardClient(address)
        if board and board.health().get('backend') != 'pl':
            raise ValueError('批量分析需要 PL 服务；扫描已保存，请连接后重试。')
        def publish(entry, task):
            if self._stop_event.is_set():
                self._batch_update(entry, status='partial', error='已停止，未发布；可在访问码页手动发布。')
                return
            self._batch_update(entry, status='publishing')
            try:
                self._auto_publish(entry['scan_id'], task['task_id'])
                self._batch_result(entry, task, False)
            except Exception:
                # Portal errors may contain credentials; keep queue errors fixed.
                self._batch_update(entry, status='partial', error='发布未完成，请在访问码页重试。')
        # Only one publisher can render/upload at a time. Pending futures hold
        # task metadata, not image archives. Drain before clearing busy/closing.
        with ThreadPoolExecutor(max_workers=1, thread_name_prefix='mri-image-sync') as publisher:
            publications = []
            index = 0
            while True:
                if self._stop_event.is_set():
                    break
                with self._lock:
                    if index < len(entries):
                        entry = entries[index]
                        index += 1
                        self._single_accepting = False
                    elif single and any(not future.done() for future in publications):
                        # Keep one publisher alive while the user chooses the
                        # next case. Only this serial worker may run inference.
                        self._single_accepting = True
                        entry = None
                    else:
                        self._single_accepting = False
                        break
                if entry is None:
                    self._stop_event.wait(.1)
                    continue
                if not entry.get('scan_id'):
                    continue
                self._batch_update(entry, status='analyzing', error='')
                with self._lock:
                    self._imported_scan = entry['scan_id']
                try:
                    task_id = self._workflow.run(entry['scan_id'], board, software_reference=reference, device=device)
                    task = self._task(entry['scan_id'], task_id)
                    self._batch_update(entry, task_id=task_id)
                    if self._stop_event.is_set():
                        self._batch_update(entry, status='partial', error='已停止；已完成结果保留。')
                        break
                    if task['classification'].get('status') in ('pending','running','connection_lost'):
                        self._batch_update(entry, status='interrupted', error='板端任务尚未结束；请重连收取结果，再分析后续病例。')
                        break
                    if not reference and task['classification'].get('status') == 'complete':
                        self._batch_update(entry, status='sync_wait')
                        publications.append(publisher.submit(publish, entry, task))
                    else:
                        self._batch_result(entry, task, reference)
                except Exception as error:
                    self._batch_update(entry, status='failed', error=str(error))
                    if any(t['classification'].get('status') in ('pending','running','connection_lost')
                           for t in self._store.tasks(entry['scan_id'])):
                        break
            with self._lock:
                self._single_accepting = False
            for future in publications:
                future.result()

    @response
    def analyze_batch(self, address, mode, device, scan_ids=None):
        if mode not in ('pl','software_reference') or device not in ('cpu','cuda'):
            raise ValueError('无效的运行模式或分割设备。')
        with self._lock:
            if self._busy or self._closing:
                raise ValueError('请等待当前任务完成。')
            if self._portal_operation:
                raise ValueError('请先查看上一项患者访问操作的结果。')
            rows, blocked = self._queue_entries()
            eligible = {r['scan_id']:r for r in rows if r['selectable']}
            if scan_ids is not None:
                if not isinstance(scan_ids,list) or not scan_ids or len(set(scan_ids)) != len(scan_ids) or any(s not in eligible for s in scan_ids):
                    raise ValueError('所选病例已完成、已删除或正在运行，请刷新后重新选择。')
                entries = [eligible[s] for s in scan_ids]
            else:
                entries = list(eligible.values())
            if blocked:
                raise ValueError(blocked)
            if not entries:
                raise ValueError('病例库中没有待分析病例。')
        address = self._settings.save(address)['address']
        def work():
            with self._lock:
                self._batch = dict(running=True, analyze=True, rows=entries, error='')
            try:
                self._run_batch(entries, address, mode == 'software_reference', device)
            except Exception as error:
                with self._lock:
                    self._batch['error'] = str(error)
            finally:
                with self._lock:
                    self._batch['running'] = False
                self._notify({'message':'批量分析与后台影像同步已结束，请查看各例状态。'})
        return self._start(work, stoppable=True)

    def _start_portal(self, kind, work, context, inline=False, automatic=False):
        # Secrets never enter notifications, task records or the regular state poll.
        # Keep only one transient result until the UI claims it exactly once.
        with self._lock:
            if self._portal_operation:
                raise ValueError('请先查看上一项患者访问操作的结果。')
            operation = dict(id=uuid.uuid4().hex, kind=kind, status='pending', context=context, started=time.monotonic(), automatic=automatic)
            self._portal_operation = operation
            def run():
                try:
                    result = work()
                    allowed = {'case_id', 'access_code', 'patient_url', 'task_id', 'images_uploaded', 'images_reused', 'image_status', 'image_error'} if kind == 'publish' else set()
                    safe_result = {key: result[key] for key in allowed if key in result}
                    if kind in ('publish', 'revoke'):
                        self._publications.save(context, safe_result if kind == 'publish' else None)
                        self._publication_revision += 1
                    with self._lock:
                        operation.update(status='complete', result=safe_result)
                    message = {'pair':'开发板配对成功', 'publish':'患者访问已发布，可在“访问码”标签页查看', 'revoke':'患者访问已撤销'}[kind]
                    if kind == 'pair':
                        message += '；'+result.get('time_sync', {}).get('message', '')
                    if safe_result.get('image_status') == 'failed':
                        message = '访问码已生成，完整影像同步失败；结果和已有关键切面仍可查看。'
                    elif safe_result.get('image_status') == 'stopped':
                        message = '影像同步已停止，已生成的访问码保留。'
                    self._notify({'message':message})
                except StopRequested:
                    message = '已停止发布。'
                    with self._lock:
                        operation.update(status='failed', error=message)
                    self._notify({'message':message})
                except Exception as error:
                    # Even an unexpected HTTP/helper exception may contain a token.
                    message = {'pair':'配对失败，请核对地址和六位临时配对码，确认板端服务可达。',
                               'publish':'发布未确认成功。请检查板端连接、医生配对及任务状态，再重新发布获取新码。',
                               'revoke':'撤销未确认成功，请检查连接和医生配对后重试。'}[kind]
                    safe_errors = {
                        '开发板尚不支持六位配对，请更新板端运行包。',
                        '配对失败：请核对六位码是否正确、未过期且未使用，并检查板端连接。',
                        '开发板尚未启用患者入口，请先更新患者入口运行包。',
                        '三轴影像超过64 MiB发布限额，已保留本地文件；可仅发布结果与关键切面。',
                        '影像压缩包超过64 MiB发布限额；可仅发布结果与关键切面。',
                        '患者影像超出每轴512张的发布范围。',
                        '本地记录与板端病例归属不一致，已停止发布。',
                        '板端分类尚未完成，不能发布患者报告。',
                        '开发板需要医生配对，或配对密钥已失效。请在设置中输入板端 doctor.key 后重新连接。',
                    }
                    if str(error) in safe_errors:
                        message = str(error)
                    if kind == 'publish' and operation.get('published'):
                        # A failed image operation cannot invalidate a code that
                        # was already issued and saved successfully.
                        message = '访问码已生成，完整影像同步失败；结果和已有关键切面仍可查看。'
                        saved = dict(operation['published'], image_status='failed', image_error=message)
                        self._publications.save(context, saved)
                        self._publication_revision += 1
                    elif kind in ('publish', 'revoke'):
                        self._publications.uncertain(context, case_wide=kind == 'publish')
                        self._publication_revision += 1
                    with self._lock:
                        operation.update(status='failed', error=message)
                    self._notify({'error':message})
            if not inline:
                try:
                    self._start(run, stoppable=kind == 'publish')
                except Exception:
                    self._portal_operation = None
                    raise
                return {'operation_id':operation['id']}
        # Automatic publication runs in the caller's worker (the serial publisher
        # in a batch). Release the state lock before packing/upload for live polling.
        run()
        return {'operation_id':operation['id']}

    def _publish_work(self, context, include_slices):
        from host.patient_access import publish_task
        operation = self._portal_operation
        def progress(event):
            stage = event.get('stage')
            if self._stop_event.is_set() and stage not in ('complete', 'images_failed'):
                raise StopRequested('已停止影像同步。')
            if stage not in ('checking', 'issuing', 'preparing', 'rendering', 'uploading', 'complete', 'images_failed'):
                return
            value = {'stage':stage}
            for key in ('current','total'):
                if type(event.get(key)) is int:
                    value[key] = max(0, min(1536, event[key]))
            with self._lock:
                operation['progress'] = value
                self._revision += 1
        def published(result):
            allowed = ('case_id','access_code','patient_url','task_id','images_uploaded','image_status')
            safe = {key:result[key] for key in allowed if key in result}
            self._publications.save(context, safe)
            with self._lock:
                operation['published'] = safe
                self._publication_revision += 1
            self._notify({'message':'访问码已生成，可复制使用；正在同步完整影像。' if include_slices else '访问码已生成，可复制使用。'})
        return publish_task(self._store, context['scan_id'], context['task_id'], context['address'],
                            include_slices=include_slices, on_published=published, progress=progress)

    def _auto_publish(self, scan_id, task_id):
        if self._stop_event.is_set():
            return
        task = self._task(scan_id, task_id)
        if task['classification'].get('status') != 'complete' or task['backend'] == 'software_reference':
            return
        context = self._patient_context(scan_id, task_id)
        with self._lock:
            # Automatic publication is durable in PublicationState. A batch must
            # not depend on the browser consuming the previous transient reply.
            previous = self._portal_operation
            if previous and previous.get('automatic') and previous['status'] != 'pending':
                self._portal_operation = None
        self._notify({'message':'分析已完成，正在自动发布患者结果和影像…'})
        def work():
            return self._publish_work(context, True)
        self._start_portal('publish', work, context, inline=True, automatic=True)
        with self._lock:
            if self._portal_operation:
                self._portal_operation['automatic'] = True

    @response
    def take_portal_result(self, operation_id):
        with self._lock:
            operation = self._portal_operation
            if not operation or operation['id'] != operation_id:
                return {'status':'missing'}
            if operation['status'] == 'pending':
                return {'status':'pending', 'kind':operation['kind'], 'code_ready':bool(operation.get('published'))}
            self._portal_operation = None
            return operation

    @response
    def get_patient_access(self, scan_id, task_id):
        self._task(scan_id, task_id)
        return self._publications.get(scan_id, task_id)

    @response
    def pair_board(self, address, doctor_token):
        address = normalize_address(address)
        # Validate without echoing input. The helper owns encrypted persistence.
        from host.patient_access import validate_pairing_input
        doctor_token = validate_pairing_input(doctor_token)
        def work():
            from host.patient_access import pair_board
            result = pair_board(address, doctor_token)
            result['time_sync'] = self._sync_clock(BoardClient(address, timeout=8))
            with self._lock:
                self._connection = dict(status='connected', address=address, backend='', time_sync=result['time_sync'])
            return result
        return self._start_portal('pair', work, {'address':address})

    def _patient_context(self, scan_id, task_id):
        task = self._task(scan_id, task_id)
        if task['backend'] == 'software_reference':
            raise ValueError('本机参考任务不能发布到开发板。')
        if task['classification'].get('status') != 'complete':
            raise ValueError('请先完成所选任务的板端分类。')
        address = normalize_address(task['backend'])
        return dict(scan_id=scan_id, task_id=task_id, case_id=self._store.scan(scan_id)['case_id'], address=address)

    @response
    def publish_patient(self, scan_id, task_id, include_slices=True, confirmed=False):
        if confirmed is not True:
            raise ValueError('请先确认发布所选任务并更新访问码。')
        context = self._patient_context(scan_id, task_id)
        def work():
            return self._publish_work(context, bool(include_slices))
        return self._start_portal('publish', work, context)

    @response
    def revoke_patient(self, scan_id, task_id, confirmed=False):
        if confirmed is not True:
            raise ValueError('请先确认撤销所选任务的患者访问。')
        context = self._patient_context(scan_id, task_id)
        def work():
            from host.patient_access import revoke_task
            return revoke_task(self._store, scan_id, task_id, context['address'])
        return self._start_portal('revoke', work, context)

    @response
    def delete_scan(self, scan_id, confirmed=False):
        if confirmed is not True:
            raise ValueError('请先确认同步删除这次扫描。')
        with self._lock:
            if self._busy or self._closing:
                raise ValueError('当前有任务正在运行或窗口正在关闭，暂时无法删除。')
            plan = self._store.deletion_plan(scan_id)
            self._busy = True
        try:
            empty = {}
            for target in plan['targets']:
                address = normalize_address(target['address'])
                try:
                    board = BoardClient(address)
                    for task in self._store.tasks(target['scan_id']):
                        if task['task_id'] not in target['task_ids'] or task['segmentation'].get('status') not in ('complete','failed'):
                            continue
                        try:
                            remote = board.status(task['task_id'])
                        except RuntimeError as error:
                            if 'HTTP 404' in str(error) or 'HTTP 410' in str(error):
                                continue  # Already removed by an earlier retry.
                            raise
                        if remote.get('segmentation',{}).get('status') in ('pending','running'):
                            if remote.get('scan_id')!=target['scan_id'] or remote.get('case_id')!=target['case_id']:
                                raise ValueError('Remote task ownership mismatch')
                            terminal={k:v for k,v in task['segmentation'].items() if k in ('status','version','source','error')}
                            board.segmentation(task['task_id'],terminal)
                    result = board.delete_scan(target['scan_id'],target['case_id'])
                    if (result.get('deleted') is not True or result.get('scan_id')!=target['scan_id']
                            or result.get('case_id')!=target['case_id'] or type(result.get('case_empty')) is not bool):
                        raise ValueError('Unconfirmed deletion')
                except Exception as error:
                    raise ValueError('板端删除尚未全部确认，本地病例保留。请检查原开发板连接、配对和服务版本后重试；已成功删除的部分不会恢复。') from error
                empty[address] = result['case_empty']
                self._store.record_remote_deletion(target['scan_id'],address)
                for task_id in target['task_ids']:
                    self._publications.save(dict(scan_id=target['scan_id'],task_id=task_id,case_id=target['case_id'],address=address),None)
                with self._lock:
                    self._publication_revision += 1
            release = plan['last_scan'] and all(empty.values()) and plan['case_id'].isascii() and plan['case_id'].isdecimal()
            self._store.delete_scan(scan_id,release_number=release)
            with self._lock:
                if self._imported_scan == scan_id:
                    self._imported_scan = None
                self._notify({'message':'扫描已同步删除；'+('编号可供后续导入复用。' if release else '同病例仍有其他记录，编号继续保留。')})
            with self._image_lock:
                if self._viewer_key and self._viewer_key[0] == scan_id:
                    self._viewer = self._viewer_key = None
            return dict(deleted_scan=scan_id,number_released=release,board_synced=bool(plan['targets']))
        finally:
            with self._lock:
                self._busy = False
                self._revision += 1

    @response
    def save_preferences(self, mode, device):
        return self._settings.save(self._settings.snapshot()['address'], mode=mode, device=device)

    @response
    def save_address(self, address):
        saved = self._settings.save(address)
        with self._lock:
            if self._connection['address'] != saved['address']:
                self._connection = {'status': 'disconnected', 'address': saved['address'], 'backend': ''}
        return saved

    @response
    def check_connection(self, address):
        address = self._settings.save(address)['address']
        with self._lock:
            if self._connection['status'] == 'checking':
                raise ValueError('连接检查正在进行。')
            self._connection = dict(status='checking', address=address, backend='')
        try:
            board = BoardClient(address, timeout=8)
            health = board.health()
            # Health must be recognisable as this application's service.
            if not isinstance(health, dict) or not health.get('backend') or not health.get('model_version'):
                raise ValueError('该地址未返回有效的 MRI 服务信息。')
            clock = self._sync_clock(board)
            with self._lock:
                if self._settings.snapshot()['address'] == address:
                    self._settings.save(address, successful=True)
                    self._connection = dict(status='connected', address=address, backend=health['backend'], time_sync=clock)
            self._notify({'message': '开发板连接成功 · ' + str(health['backend']).upper()+'；'+clock['message']})
            return dict(address=address, health=health, settings=self._settings.snapshot(), time_sync=clock)
        except Exception as error:
            with self._lock:
                if self._connection['address'] == address:
                    self._connection = dict(status='failed', address=address, backend='')
            raise ValueError('连接失败：' + str(error)) from error

    def _sync_clock(self, board):
        try:
            result = board.sync_time()
            if not isinstance(result, dict) or result.get('synced') is not True:
                raise ValueError('Time synchronization was not confirmed')
            message = ('开发板系统时间和 RTC 均已同步' if result.get('rtc_updated') is True else
                       '系统时间已同步，RTC 写入未成功' if result.get('rtc_updated') is False and result.get('rtc_error') else
                       '开发板时间已同步')
            return {'synced':True, 'message':message, 'rtc_updated':result.get('rtc_updated') is True}
        except Exception as error:
            message = ('开发板时间未同步：请更新板端运行包。' if 'HTTP 404' in str(error) or isinstance(error, AttributeError)
                       else '开发板已连接，但时间同步失败；请检查板端校时权限或连接。')
            return {'synced':False, 'message':message}

    @response
    def analyze(self, scan_id, address, mode, device):
        scan = self._store.scan(scan_id)
        if mode not in ('pl', 'software_reference') or device not in ('cpu', 'cuda'):
            raise ValueError('无效的运行模式或分割设备。')
        address = normalize_address(address)
        entry = dict(scan_id=scan_id,case_id=scan['case_id'],source='',status='imported',selectable=True)
        with self._lock:
            if self._closing:
                raise ValueError('窗口正在关闭。')
            rows, blocked = self._queue_entries()
            if blocked:
                raise ValueError(blocked)
            if self._busy:
                if not self._single_accepting or self._stop_event.is_set():
                    raise ValueError('当前分析尚未结束，请稍候。')
                if self._single_config != (address,mode,device):
                    raise ValueError('后台同步期间请沿用当前开发板和运行设置。')
                if any(r['scan_id']==scan_id and r['status'] in ('sync_wait','publishing') for r in rows):
                    raise ValueError('当前病例仍在同步影像，请选择其他病例。')
                self._batch['rows'].append(entry)
                self._single_accepting = False
                self._revision += 1
                return {'started':True}
            if self._portal_operation:
                if self._portal_operation.get('automatic') and self._portal_operation['status'] != 'pending':
                    self._portal_operation = None
                else:
                    raise ValueError('请先查看上一项患者访问操作的结果。')
            self._settings.save(address)
        def work():
            entries = [entry]
            with self._lock:
                self._single_config = (address,mode,device)
                self._batch = dict(running=True,analyze=True,single=True,rows=entries,error='')
            try:
                self._run_batch(entries,address,mode == 'software_reference',device,single=True)
            finally:
                with self._lock:
                    self._single_accepting = False
                    self._batch['running'] = False
        return self._start(work, stoppable=True)

    @response
    def resume(self, scan_id, task_id):
        with self._lock:
            if self._portal_operation:
                raise ValueError('请先查看上一项患者访问操作的结果。')
        task = self._task(scan_id, task_id)
        if task['backend'] == 'software_reference':
            raise ValueError('本机软件任务没有可收取的板端结果。')
        if task['classification']['status'] not in ('pending', 'running', 'connection_lost'):
            raise ValueError('该任务无需重连收取结果。')
        address = normalize_address(task['backend'])
        def work():
            self._workflow.poll(task_id, BoardClient(address))
            self._auto_publish(scan_id, task_id)
            with self._lock:
                entry = next((row for row in (self._batch or {}).get('rows', []) if row.get('scan_id') == scan_id), None)
            if entry:
                self._batch_result(entry, self._task(scan_id, task_id), False)
        return self._start(work, stoppable=True)

    @response
    def choose_file(self):
        import webview
        paths = self._window.create_file_dialog(webview.FileDialog.OPEN, allow_multiple=False,
            file_types=('MRI (*.hdr;*.nii;*.nii.gz)', '所有文件 (*.*)'))
        return str(paths[0]) if paths else None

    @response
    def choose_folder(self):
        import webview
        paths = self._window.create_file_dialog(webview.FileDialog.FOLDER)
        return str(paths[0]) if paths else None

    @response
    def preview_folder(self, folder):
        from host.input.folder_import import discover_folder
        rows = discover_folder(folder)
        for row in rows:
            row['id'] = uuid.uuid4().hex
            row['existing'] = self._store.source_match(row['image'],row['mask'],row['native']) if row['ready'] else None
        with self._lock:
            if self._busy:
                raise ValueError('请等待当前任务完成。')
            self._folder_preview = {row['id']:row for row in rows}
        return dict(folder=str(Path(folder).resolve()), rows=rows)

    @response
    def import_folders(self, row_ids, confirmed=False):
        if confirmed is not True:
            raise ValueError('请确认影像网格和来源。')
        with self._lock:
            if not isinstance(row_ids, list) or not row_ids or len(set(row_ids)) != len(row_ids):
                raise ValueError('请选择至少一个可导入的病例。')
            rows = [dict(self._folder_preview.get(key, {})) for key in row_ids]
            if any(not row.get('ready') for row in rows):
                raise ValueError('识别结果已失效或存在缺失/歧义，请重新选择文件夹。')
        def work():
            entries = [dict(source=row['source'], status='waiting') for row in rows]
            with self._lock:
                self._batch = dict(running=True, analyze=False, rows=entries)
            known = {s['scan_id'] for s in self._store.scans()}
            try:
                for row, entry in zip(rows, entries):
                    self._batch_update(entry, status='importing')
                    try:
                        scan = self._store.import_scan(None, row['image'], row['mask'], row['native'], confirmed_grid=True)
                        duplicate = scan in known
                        known.add(scan)
                        self._batch_update(entry, scan_id=scan, case_id=self._store.scan(scan)['case_id'],
                                           status='duplicate' if duplicate else 'imported')
                        with self._lock:
                            self._imported_scan = scan
                    except Exception as error:
                        self._batch_update(entry, status='failed', error=str(error))
            finally:
                with self._lock:
                    self._batch['running'] = False
                added=sum(r['status']=='imported' for r in entries)
                duplicates=sum(r['status']=='duplicate' for r in entries)
                failed=sum(r['status']=='failed' for r in entries)
                self._notify({'message':f'导入完成：新增 {added} 例，已有 {duplicates} 例，失败 {failed} 例。请选择病例后点击分析。'})
        return self._start(work)

    @response
    def import_scan(self, values):
        if values.get('confirmed') is not True:
            raise ValueError('请确认输入属于同一扫描，并符合 T88 网格与强度要求。')
        if not values.get('image') or not values.get('mask'):
            raise ValueError('请选择 T88 影像和脑掩膜。')
        def work():
            known = {row['scan_id'] for row in self._store.scans()}
            scan_id = self._store.import_scan(values.get('case') or None, values['image'], values['mask'],
                values.get('native') or None, confirmed_grid=True)
            with self._lock:
                self._imported_scan = scan_id
            self._notify({'message': '扫描已存在，已选中原记录，未重复导入。' if scan_id in known else '扫描已导入，请点击分析。'})
        return self._start(work)

    @response
    def export_report(self, scan_id, task_id=None):
        import webview
        scan = self._store.scan(scan_id)
        tasks = [self._task(scan_id, task_id)] if task_id else self._store.tasks(scan_id)
        from host.paths import exports_folder
        paths = self._window.create_file_dialog(webview.FileDialog.SAVE, save_filename='MRI-report.json',
            directory=exports_folder(), file_types=('JSON (*.json)',))
        if not paths:
            return None
        path = Path(paths if isinstance(paths, str) else paths[0])
        if not path.suffix:
            path = path.with_suffix('.json')
        # Reports are append-only; a file dialog overwrite prompt is not enough.
        with path.open('x', encoding='utf-8') as output:
            json.dump(dict(scan=scan, tasks=tasks), output, ensure_ascii=False, indent=2)
        return str(path)

    @response
    def render_slice(self, scan_id, task_id, axis, index=None):
        if isinstance(axis, bool) or axis not in (0, 1, 2):
            raise ValueError('无效的切片方向。')
        task = self._task(scan_id, task_id)
        seg = task['segmentation']
        if seg['status'] != 'complete':
            raise ValueError('分割完成后可查看脑区切片。')
        key = (scan_id, task_id, seg['image'], seg['labels'])
        with self._image_lock:
            if key != self._viewer_key:
                self._viewer = SliceViewer(seg['image'], seg['labels'])
                self._viewer_key = key
            length = self._viewer.volume.shape[axis]
            index = length // 2 if index is None else max(0, min(length - 1, int(index)))
            png = BytesIO()
            self._viewer.render(axis, index, (960, 720)).save(png, format='PNG')
            return dict(index=index, length=length,
                        image='data:image/png;base64,' + base64.b64encode(png.getvalue()).decode('ascii'))
