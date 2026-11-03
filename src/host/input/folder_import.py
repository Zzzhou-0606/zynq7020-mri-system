"""Conservative, read-only discovery of prepared MRI folders (not DICOM conversion)."""
from pathlib import Path
import os
import re

SESSION = re.compile(r'OAS1_\d{4}_MR\d+', re.I)
ROLE_DIRS = {'classification_t88', 'native_mri', 'processed', 'fsl_seg', 'mprage'}


def discover_folder(folder):
    root = Path(folder).resolve(strict=True)
    if not root.is_dir():
        raise ValueError('请选择病例文件夹或包含多个病例的总文件夹。')
    groups = {}
    count = 0
    def inaccessible(error):
        raise ValueError('无法读取所选目录中的文件，请检查权限。') from error
    for current, dirs, files in os.walk(root, followlinks=False, onerror=inaccessible):
        dirs[:] = sorted(d for d in dirs if not d.startswith('.') and
                         not Path(current, d).is_symlink() and
                         not getattr(Path(current, d), 'is_junction', lambda: False)())
        for name in sorted(files):
            count += 1
            if count > 20000:
                raise ValueError('目录内容过多，请选择更具体的病例数据目录（最多 20000 个文件）。')
            path = Path(current, name)
            if path.is_symlink() or not name.lower().endswith(('.hdr', '.nii', '.nii.gz')):
                continue
            relative = path.relative_to(root)
            stem = re.sub(r'\.(nii\.gz|nii|hdr)$', '', name, flags=re.I).lower()
            parts = {p.lower() for p in relative.parts[:-1]}
            # Output segmentation volumes are deliberately never guessed as inputs.
            role = ('mask' if stem.endswith('_t88_masked_gfc_fseg') or stem in ('mask', 'brain_mask') else
                    'image' if stem.endswith('_t88_masked_gfc') or stem in ('image', 't88', 't88_image') else
                    'native' if stem in ('native', 'native_mri') or
                    (('native_mri' in parts or 'subj_111' in parts) and 't88' not in stem) or
                    (SESSION.fullmatch(stem) and name.lower().endswith(('.nii', '.nii.gz'))) else None)
            if not role:
                continue
            ids = {m.upper() for m in SESSION.findall(str(relative))}
            root_ids = {m.upper() for m in SESSION.findall(root.name)}
            if root_ids:
                ids |= root_ids
            # A non-session folder keeps its direct child cases separate. Known
            # input-role subfolders belong to the selected case itself.
            parents = list(relative.parts[:-1])
            role_index = next((i for i, part in enumerate(parents) if part.lower() in ROLE_DIRS), len(parents))
            generic = '/'.join(parents[:role_index]) or root.name
            key = next(iter(ids)) if len(ids) == 1 else generic
            group = groups.setdefault(key, dict(source=key, image=[], mask=[], native=[], errors=[]))
            group[role].append(str(path))
            if len(ids)>1:
                group['errors'].append('路径与文件名包含不同扫描编号')
            if path.suffix.lower() == '.hdr' and not path.with_suffix('.img').is_file():
                group['errors'].append('Analyze 文件缺少配套 .img：'+name)
    if not groups:
        return [dict(source=root.name, ready=False, errors=['未识别到准备好的 T88 / 掩膜 / 原生 MRI 文件'], image='', mask='', native='')]
    rows = []
    for _, group in sorted(groups.items()):
        errors = group['errors']
        row = {'source':group['source']}
        for role, label in [('image','T88 影像'),('mask','脑掩膜'),('native','原生 MRI')]:
            candidates = group[role]
            if len(candidates) != 1:
                errors.append(('缺少' if not candidates else '存在多个候选：')+label)
            row[role] = candidates[0] if len(candidates) == 1 else ''
        row.update(ready=not errors, errors=sorted(set(errors)))
        rows.append(row)
    return rows
