"""Local touchscreen export of the current case. Never exports credentials or deletes files."""
import argparse
from html import escape
import json
import math
import stat
import zipfile
import os
from pathlib import Path
import re
import shutil
import sys
import uuid


def mounted_usb(mounts_path="/proc/mounts", sys_class="/sys/class/block"):
    devices = []
    for row in Path(mounts_path).read_text().splitlines():
        fields = row.split()
        if len(fields) < 4 or not re.fullmatch(r'/dev/sd[a-z]+[0-9]*', fields[0]):
            continue
        device, target, filesystem, options = fields[:4]
        hardware = str((Path(sys_class) / Path(device).name).resolve())
        if not any(re.fullmatch(r'usb[0-9]+', part) for part in Path(hardware).parts):
            continue
        target = re.sub(r'\\([0-7]{3})', lambda m: chr(int(m[1], 8)), target)
        if 'rw' in options.split(',') and 'ro' not in options.split(',') and Path(target).is_mount() and not Path(target).is_symlink():
            devices.append({'device': device, 'mount': target, 'filesystem': filesystem})
    return devices


def read_json(path):
    return json.loads(safe_path(path).read_text('utf-8'), parse_constant=lambda x: (_ for _ in ()).throw(ValueError('Nonfinite JSON')))


def safe_path(path):
    if not path or '..' in Path(path).parts:
        raise ValueError('Unsafe export path')
    candidate = Path(path).absolute()
    for item in (candidate, *candidate.parents):
        if item.is_symlink():
            raise ValueError('Symlink export paths are not allowed')
    return candidate


def regular_file(path):
    path = safe_path(path)
    if not stat.S_ISREG(path.stat().st_mode):
        raise ValueError('Export source must be a regular file')
    return path


def clean_classification(classification):
    source = classification.get('result', {})
    result = {}
    for key in ('class_id', 'prediction', 'score', 'probability_positive', 'severity_probability', 'probabilities_abc', 'severity_status'):
        if key not in source:
            continue
        value = source[key]
        if key == 'severity_status':
            if value not in ('complete', 'not_applicable', 'incomplete'):
                raise ValueError('Invalid classification status')
        elif key == 'probabilities_abc':
            if not isinstance(value, list) or len(value) != 3 or any(type(v) not in (int,float) or not math.isfinite(v) or not 0 <= v <= 1 for v in value):
                raise ValueError('Invalid classification probabilities')
        elif key in ('class_id','prediction'):
            if value is not None and (type(value) is not int or value not in ((0,1,2) if key=='class_id' else (0,1))):
                raise ValueError('Invalid classification category')
        elif value is not None and (type(value) not in (int,float) or not math.isfinite(value) or not 0 <= value <= (100 if key=='score' else 1)):
            raise ValueError('Invalid classification number')
        result[key] = value
    return {'status': 'complete', 'result': result}


def clean_measurement(value):
    if not isinstance(value, dict):
        return None
    clean = {}
    for key, count in (('volumes_mm3',8),('hippocampus_percent_parenchyma',2)):
        if key in value:
            numbers = value[key]
            if not isinstance(numbers,list) or len(numbers)!=count or any(type(v) not in (int,float) or not math.isfinite(v) or v<0 or (key.startswith('hippocampus') and v>100) for v in numbers):
                raise ValueError('Invalid export measurements')
            clean[key] = numbers
    if value.get('ratio_denominator') == 'segmented_brain_parenchyma_not_ICV':
        clean['ratio_denominator'] = value['ratio_denominator']
    return clean


def complete_images(path, shape):
    if not isinstance(shape,list) or len(shape)!=3 or any(type(v) is not int or not 1<=v<=512 for v in shape):
        return False
    try:
        if path.stat().st_size > 64*1024**2:
            return False
        with zipfile.ZipFile(path) as stream:
            entries = stream.infolist()
            expected = {'manifest.json'} | {'a%d_%d.png'%(axis,index) for axis in range(3) for index in range(shape[axis])}
            if (len(entries)!=len(expected) or set(stream.namelist())!=expected
                    or sum(info.file_size for info in entries)>64*1024**2
                    or any(info.flag_bits&1 or stat.S_ISLNK(info.external_attr>>16) for info in entries)
                    or stream.getinfo('manifest.json').file_size>4096):
                return False
            manifest=json.loads(stream.read('manifest.json'))
            return manifest.get('shape')==shape and stream.testzip() is None
    except (OSError,ValueError,zipfile.BadZipFile,RuntimeError):
        return False


def sync_directory(path):
    if os.name == 'posix':
        fd=os.open(str(path),os.O_RDONLY|getattr(os,'O_DIRECTORY',0))
        try:
            os.fsync(fd)
        finally:
            os.close(fd)


def render_report(report, preview_slots):
    """Standalone offline report; all variable text is escaped and URLs are fixed."""
    def text(value):
        return escape(str(value)) if value is not None else '未提供'
    def number(value, digits=3):
        return ('%.*f' % (digits, value)) if value is not None else '未提供'
    result = report['classification']['result']
    label = {0:'无痴呆倾向', 1:'极轻倾向', 2:'轻度及以上倾向'}.get(result.get('class_id'), '一级已完成 · 二级未完成')
    rows = [('一级提示分', number(result.get('score'),2)+' / 100'),
            ('一级阳性概率', number(result.get('probability_positive'),6)),
            ('二级轻度及以上概率', number(result.get('severity_probability'),6))]
    probabilities = result.get('probabilities_abc')
    if probabilities:
        rows += [('分支 '+name+' 概率', number(value,6)) for name,value in zip('ABC',probabilities)]
    measurement = report.get('measurement') or {}
    volumes = measurement.get('volumes_mm3')
    if volumes:
        names = ('左海马','右海马','左内嗅皮质','右内嗅皮质','左颞下皮质','右颞下皮质','侧脑室合计','分割脑实质')
        rows += [(name+'体积',number(value,1)+' mm³') for name,value in zip(names,volumes)]
    ratios = measurement.get('hippocampus_percent_parenchyma')
    if ratios:
        rows += [(name+'占脑实质比例',number(value,3)+'%') for name,value in zip(('左海马','右海马'),ratios)]
    denominator = ('占比分母：分割得到的脑实质体积，不是颅内容积（ICV）。'
                   if measurement.get('ratio_denominator') == 'segmented_brain_parenchyma_not_ICV'
                   else '占比分母尚未提供。')
    table = ''.join('<tr><th>'+text(key)+'</th><td>'+text(value)+'</td></tr>' for key,value in rows)
    views = ''.join('<figure><img src="preview_%d.png" alt="关键切面 %d"><figcaption>关键切面 %d</figcaption></figure>'
                    % (slot,slot+1,slot+1) for slot in sorted(preview_slots)) or '<p>当前没有可导出的关键切面。</p>'
    archive = ('<a class="button" href="images.zip" download>下载完整三方向切片 ZIP</a><p>ZIP 包含已同步的 PNG 切片，可解压后浏览。</p>'
               if report['full_images'] else '<p class="notice">仅包含当前关键切面。完整三方向切片尚未同步，可同步完成后重新导出。</p>')
    return ('''<!doctype html><html lang="zh-CN"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>MRI 分析结果</title><style>
*{box-sizing:border-box}body{margin:0;background:#f1f5fa;color:#24344b;font:16px/1.6 "Microsoft YaHei",Arial,sans-serif}
main{max-width:1040px;margin:36px auto;padding:0 20px}header{margin-bottom:24px}.brand{color:#2267cf;font-weight:700;letter-spacing:.1em}
h1{font-size:30px;margin:8px 0}h2{font-size:20px;margin:0 0 16px}.meta{overflow-wrap:anywhere;color:#5b6c83}
section{background:white;border:1px solid #dee6f0;border-radius:16px;padding:24px;margin:18px 0;box-shadow:0 4px 16px #172b4d05}
.label{font-size:25px;color:#2267cf;margin-bottom:18px}table{border-collapse:collapse;width:100%}th,td{padding:9px 8px;border-bottom:1px solid #edf1f6;text-align:left}th{font-weight:500;width:65%}
.views{display:flex;flex-wrap:wrap;gap:16px}figure{flex:1 1 220px;margin:0;min-width:0}img{width:100%;height:230px;object-fit:contain;background:#0c1422;border-radius:10px}figcaption{text-align:center;color:#617086;padding:8px}
.note,.notice{color:#607087}.button{display:inline-block;background:#2267cf;color:white;padding:10px 18px;border-radius:8px;text-decoration:none}a{color:#2267cf}footer{font-size:13px;color:#65748a;overflow-wrap:anywhere;margin:24px 0}
@media(max-width:600px){main{margin:20px auto}section{padding:18px}h1{font-size:25px}}
</style></head><body><main><header><div class="brand">MRI STATION</div><h1>MRI 分析结果</h1><div class="meta">病例：'''
            +text(report.get('case_id'))+'<br>扫描：'+text(report.get('scan_id'))+'</div></header>'
            +'<section><h2>分类与量测</h2><div class="label">'+text(label)+'</div><table>'+table+'</table><p class="note">'
            +text(denominator)+'</p></section><section><h2>关键影像</h2><div class="views">'+views+'</div></section>'
            +'<section><h2>导出文件</h2>'+archive+'<p><a href="result.json" download>原始结果 JSON</a></p>'
            +'<p class="note">本导出不包含原始 MRI 体数据；原始 MRI 保留在医生电脑。只有同目录存在 COMPLETE.json 时，本次导出才已完成。</p></section>'
            +'<footer>任务：'+text(report['task_id'])+'<br>模型：'+text(report.get('model_version'))+'</footer></main></body></html>')


def current_export(task_root, mount, task_id=None):
    root = safe_path(task_root)
    if task_id is None:
        task_id = read_json(root / 'current.json').get('task_id', '')
    if str(uuid.UUID(task_id)) != task_id:
        raise ValueError('No current case to export')
    folder = safe_path(root / task_id)
    state = read_json(folder / 'status.json')
    if state.get('task_id') != task_id or state.get('classification', {}).get('status') != 'complete':
        raise ValueError('Wait for classification to complete')
    sources = []
    for slot, path in state.get('previews', {}).items():
        if slot not in ('0','1','2'):
            continue
        candidate = safe_path(path)
        if candidate.parent != folder:
            raise ValueError('Preview is outside the current task')
        sources.append((regular_file(candidate), 'preview_%s.png' % slot))
    images = None
    measurement = clean_measurement(state.get('segmentation', {}).get('measurement'))
    portal_path = safe_path(root.parent / 'portal/patients.json')
    if portal_path.is_file():
        publication = read_json(portal_path).get('tasks', {}).get(task_id, {})
        images = publication.get('images')
        if 'measurement' in publication:
            measurement = clean_measurement(publication['measurement'])
        if images:
            if not isinstance(images,dict) or not isinstance(images.get('file'),str):
                raise ValueError('Invalid image archive metadata')
            candidate = safe_path(folder / images['file'])
            if candidate.parent != folder or candidate.suffix != '.zip':
                raise ValueError('Image archive is outside the current task')
            if candidate.exists() and complete_images(regular_file(candidate),images.get('shape')):
                sources.append((candidate, 'images.zip'))
            else:
                images = None
    destination = safe_path(mount)
    identity = (destination.stat().st_dev,destination.stat().st_ino)
    def require_usb():
        if (not any(safe_path(d['mount']) == destination for d in mounted_usb())
                or (destination.stat().st_dev,destination.stat().st_ino) != identity):
            raise RuntimeError('USB drive disconnected or no longer writable')
    require_usb()
    required = sum(p.stat().st_size for p, _ in sources) + 1024 * 1024
    if shutil.disk_usage(str(destination)).free < required:
        raise RuntimeError('USB drive has insufficient free space')
    output = destination / ('MRI_' + task_id[:8] + '_' + uuid.uuid4().hex[:8])
    output.mkdir()  # Exclusive directory, independent of patient-entered names.
    report = {'case_id': state.get('case_id'), 'scan_id': state.get('scan_id'),
              'task_id': task_id, 'model_version': state.get('model_version'),
              'classification': clean_classification(state['classification']), 'measurement': measurement,
              'segmentation_status': state.get('segmentation', {}).get('status'),
              'images': images and {'shape': images.get('shape')},
              'original_mri_included': False, 'full_images': bool(images)}
    # Allowlist metadata: never copy status.json paths, portal state, keys or codes.
    for name, data in [('result.json', json.dumps(report, ensure_ascii=False, indent=2).encode('utf-8')),
                       ('report.html', render_report(report,[int(name[8]) for _,name in sources if name.startswith('preview_')]).encode('utf-8')),
                       ('README.txt', ('MRI analysis export\n'
                        'report.html: open in a browser to view this report offline\n'
                        'result.json: classification and available measurements\n'
                        'preview_*.png: available key views\n'
                        + ('images.zip: complete three-axis PNG slices\n' if images else
                           'Full images not yet synchronized; export again after synchronization.\n')
                        + 'Original MRI volume remains on the doctor computer.\n'
                        'Only an export with COMPLETE.json finished successfully.\n').encode('utf-8'))]:
        require_usb()
        with (output / name).open('xb') as stream:
            stream.write(data)
            stream.flush()
            os.fsync(stream.fileno())
    for source, name in sources:
        require_usb()
        regular_file(source)
        flags=os.O_RDONLY|getattr(os,'O_NOFOLLOW',0)|getattr(os,'O_BINARY',0)
        with os.fdopen(os.open(str(source),flags),'rb') as incoming, (output / name).open('xb') as outgoing:
            while True:
                block = incoming.read(256 * 1024)
                if not block:
                    break
                require_usb()
                outgoing.write(block)
            outgoing.flush()
            os.fsync(outgoing.fileno())
    require_usb()
    pending = output / 'COMPLETE.pending.json'
    complete = output / 'COMPLETE.json'
    with pending.open('x', encoding='utf-8') as stream:
        json.dump({'complete': True, 'full_images': bool(images)}, stream)
        stream.flush()
        os.fsync(stream.fileno())
    sync_directory(output)
    require_usb()
    try:
        pending.rename(complete)
        sync_directory(output)
        require_usb()
    except Exception:
        # Preserve every byte but never leave a success marker after a detected failure.
        if complete.exists():
            complete.rename(output / ('INCOMPLETE_'+uuid.uuid4().hex+'.json'))
        raise
    return {'path': str(output), 'task_id': task_id, 'full_images': bool(images), 'message':
            'Export complete' if images else 'Export complete: key views only; full images not yet synchronized'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=('status', 'export'))
    parser.add_argument('--mount')
    parser.add_argument('--task-id')
    args = parser.parse_args()
    try:
        if args.command == 'export' and not args.task_id:
            raise ValueError('Export requires the task ID selected when the button was pressed')
        result = {'devices': mounted_usb()} if args.command == 'status' else current_export(
            os.environ.get('MRI_TASK_ROOT', '/mnt/mri-data/tasks'), args.mount, args.task_id)
        print(json.dumps({'ok': True, 'result': result}))
    except Exception as exc:
        print(json.dumps({'ok': False, 'error': str(exc)}))
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
