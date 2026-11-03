"""Publish a selected local/board task, keeping patient access codes out of history."""
from io import BytesIO
import json
import re
from pathlib import Path
import uuid
import zipfile

from host.client.board import BoardClient
from host.client.credentials import save_token, validate_token
from host.workflows.cancellation import StopRequested

IMAGE_LIMIT = 64 * 1024**2


def validate_pairing_input(value):
    if not isinstance(value, str):
        raise ValueError('请输入六位临时配对码。')
    value = value.strip()
    return value if re.fullmatch(r'[0-9]{6}', value) else validate_token(value)


def pair_board(address, doctor_token):
    value = validate_pairing_input(doctor_token)
    if re.fullmatch(r'[0-9]{6}', value):
        try:
            exchanged = BoardClient(address, doctor_token='').request('POST', '/v1/pair', {'pairing_code':value})
            token = validate_token(exchanged.get('doctor_token'))
        except Exception as error:
            if 'HTTP 404' in str(error):
                raise ValueError('开发板尚不支持六位配对，请更新板端运行包。') from None
            raise RuntimeError('配对失败：请核对六位码是否正确、未过期且未使用，并检查板端连接。') from None
    else:
        token = value  # API compatibility for previously paired/older board tools.
    board = BoardClient(address, doctor_token=token)
    try:
        health = board.health()
    except Exception:
        raise RuntimeError('配对失败，请检查板端地址、服务状态和医生配对密钥。') from None
    if health.get('status') != 'ok' or not health.get('patient_portal', {}).get('enabled'):
        raise ValueError('开发板尚未启用患者入口，请先更新患者入口运行包。')
    save_token(board.base, token)
    return dict(address=board.base, paired=True)


def _selected(store, scan_id, task_id, address, require_complete=True):
    scan = store.scan(scan_id)
    task = next((item for item in store.tasks(scan_id) if item['task_id'] == task_id), None)
    if task is None:
        raise ValueError('所选任务不属于当前扫描。')
    if require_complete and task.get('classification', {}).get('status') != 'complete':
        raise ValueError('请等待分类完成后再发布患者报告。')
    if not str(task.get('backend', '')).startswith(('http://', 'https://')):
        raise ValueError('此任务没有对应的板端报告，不能发布到患者入口。')
    board = BoardClient(address, timeout=180)
    original = BoardClient(task['backend'], doctor_token='')
    if original.base != board.base:
        raise ValueError('请选择此任务原来使用的开发板地址，不能发布到另一块板。')
    remote = board.status(task_id)
    if remote.get('case_id') != scan['case_id'] or remote.get('scan_id') != scan_id:
        raise ValueError('本地记录与板端病例归属不一致，已停止发布。')
    if require_complete and remote.get('classification', {}).get('status') != 'complete':
        raise ValueError('板端分类尚未完成，不能发布患者报告。')
    return scan, task, board


def _image_archive(store, scan_id, task, progress=None):
    from host.visualization.slices import SliceViewer
    seg = task.get('segmentation', {})
    if seg.get('status') != 'complete' or not seg.get('image') or not seg.get('labels'):
        return None
    folder = store.folder(scan_id).resolve()
    for key in ('image', 'labels'):
        try:
            Path(seg[key]).resolve().relative_to(folder)
        except ValueError:
            raise ValueError('分割文件不在当前扫描目录内，已停止发布影像。') from None
    viewer = SliceViewer(seg['image'], seg['labels'])
    shape = [int(n) for n in viewer.volume.shape]
    if len(shape) != 3 or any(n < 1 or n > 512 for n in shape):
        raise ValueError('患者影像超出每轴512张的发布范围。')
    output = store.root / 'patient_publications' / task['task_id'] / (uuid.uuid4().hex + '.zip')
    output.parent.mkdir(parents=True, exist_ok=True)
    manifest = json.dumps(dict(shape=shape), separators=(',', ':')).encode('utf-8')
    total = len(manifest)
    count_done, count_total = 0, sum(shape)
    # PNG is already compressed. Storing it directly keeps board CPU and memory
    # use low and permits bounded per-slice reads without rebuilding the volume.
    with zipfile.ZipFile(output, 'x', compression=zipfile.ZIP_STORED) as archive:
        archive.writestr('manifest.json', manifest)
        for axis, count in enumerate(shape):
            for index in range(count):
                image = BytesIO()
                viewer.render(axis, index, (400, 360)).save(image, format='PNG')
                data = image.getvalue()
                total += len(data)
                if total > IMAGE_LIMIT or len(data) > 2 * 1024**2:
                    raise ValueError('三轴影像超过64 MiB发布限额，已保留本地文件；可仅发布结果与关键切面。')
                archive.writestr('a%d_%d.png' % (axis, index), data)
                count_done += 1
                if progress and (count_done % 8 == 0 or count_done == count_total):
                    progress(dict(stage='rendering', current=count_done, total=count_total))
    if output.stat().st_size > IMAGE_LIMIT:
        raise ValueError('影像压缩包超过64 MiB发布限额；可仅发布结果与关键切面。')
    return output


def publish_task(store, scan_id, task_id, address, include_slices=True, *, on_published=None, progress=None):
    def report(stage, **values):
        if progress:
            progress(dict(stage=stage, **values))
    report('checking')
    scan, task, board = _selected(store, scan_id, task_id, address)
    # Recheck that the local record still exists before releasing a credential.
    store.scan(scan_id)
    payload = {}
    measurement = task.get('segmentation', {}).get('measurement')
    if measurement:
        payload['measurement'] = {key: measurement[key] for key in (
            'volumes_mm3', 'hippocampus_percent_parenchyma', 'ratio_denominator') if key in measurement}
    report('issuing')
    result = board.request('POST', f'/v1/tasks/{task_id}/patient-access', payload)
    if not isinstance(result, dict) or result.get('case_id') != scan['case_id']:
        raise ValueError('发布返回的病例归属不一致，未显示访问码。')
    code = result.get('access_code')
    if not isinstance(code, str) or not (re.fullmatch(r'[0-9]{6}', code) or
            (16 <= len(code) <= 128 and code.isascii() and code.isprintable())):
        raise ValueError('板端没有返回有效访问码，请重新发布。')
    # Issue and expose the credential before rendering/uploading hundreds of PNGs.
    # Existing result/key previews remain accessible while full images synchronize.
    publication = dict(case_id=scan['case_id'], task_id=task_id, access_code=code,
                patient_url=board.base + '/patient/', images_uploaded=False,
                image_status='preparing' if include_slices else 'not_requested')
    if on_published:
        on_published(dict(publication))
    try:
        report('preparing')
        existing = False
        if include_slices:
            try:
                info = board.request('GET', f'/v1/tasks/{task_id}/patient-images')
                shape = info.get('shape') if isinstance(info, dict) else None
                existing = (isinstance(info, dict) and info.get('exists') is True and
                            isinstance(shape, list) and len(shape) == 3 and
                            all(type(n) is int and 1 <= n <= 512 for n in shape))
            except RuntimeError as error:
                # Older board packages do not expose image metadata yet.
                if 'HTTP 404' not in str(error):
                    raise
        images = _image_archive(store, scan_id, task, progress) if include_slices and not existing else None
        if images is not None:
            report('uploading')
            board.request('PUT', f'/v1/tasks/{task_id}/patient-images', images.read_bytes(), 'application/zip')
        publication.update(images_uploaded=images is not None, images_reused=existing,
                           image_status='complete' if images is not None or existing else 'not_requested')
        report('complete')
    except StopRequested:
        publication.update(image_status='stopped', image_error='影像同步已停止，已生成的访问码保留；可稍后重新发布。')
    except Exception:
        # Issuing succeeded. Never turn an image failure into a lost credential
        # or echo HTTP/error text that could contain secrets into UI state.
        publication.update(image_status='failed', image_error='完整影像同步失败，结果与访问码仍可使用。可稍后重新发布重试。')
        report('images_failed')
    return publication


def revoke_task(store, scan_id, task_id, address):
    scan, task, board = _selected(store, scan_id, task_id, address, require_complete=False)
    board.request('POST', f'/v1/tasks/{task_id}/patient-revoke', {})
    return dict(case_id=scan['case_id'], task_id=task_id, revoked=True)
