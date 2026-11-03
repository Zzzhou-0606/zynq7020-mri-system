"""Read-only source audit, selective extraction, QC and fixed-grid slice preparation.

Run from the repository root with ``python -m training.data_pipeline.oasis1``.
Only the official OASIS-1 T88 distribution is supported; generic Analyze affines
are deliberately NOT interpreted as verified world coordinates.
"""

import argparse
import re
import shutil
import tarfile
import gzip
from collections import Counter
from pathlib import Path, PurePosixPath
import xml.etree.ElementTree as ET

import nibabel as nib
import numpy as np
from openpyxl import load_workbook
from PIL import Image, ImageDraw
from scipy.ndimage import map_coordinates

from training.common import load_config, object_hash, read_json, resolve, sha256, write_csv, write_json
from training.data_pipeline.splits import nested_folds

SESSION = re.compile(r'^(OAS1_\d{4})_MR(\d+)$')


def map_labels(cdr, allowed=(0, 0.5, 1, 2)):
    if cdr is None or isinstance(cdr, bool):
        raise ValueError('Missing or invalid CDR')
    try:
        value = float(cdr)
    except (TypeError, ValueError) as error:
        raise ValueError('Non-numeric CDR') from error
    if not np.isfinite(value) or value not in allowed:
        raise ValueError(f'CDR outside dictionary: {cdr!r}')
    if value == 0:
        return 0, None, 0
    return 1, int(value >= 1), 1 if value == 0.5 else 2


def clinical_records(config):
    table = resolve(config['source_dir']) / config['clinical_file']
    book = load_workbook(table, read_only=True, data_only=True)
    sheet = book.active
    iterator = sheet.iter_rows(values_only=True)
    columns = next(iterator)
    records, seen = [], set()
    for number, values in enumerate(iterator, 2):
        row = dict(zip(columns, values))
        session = str(row['ID'])
        match = SESSION.fullmatch(session)
        if not match or session in seen:
            raise ValueError(f'Invalid or duplicate clinical session at Excel row {number}')
        seen.add(session)
        record = {
            'dataset': 'OASIS-1', 'source_version': 'cross-sectional-facts-rev2007-08-20',
            'subject_id': match[1], 'session_id': session, 'visit_number': int(match[2]),
            'clinical_row': number, 'age': row['Age'], 'sex': row['M/F'],
            'cdr_raw': row['CDR'], 'clinical_group_raw': None,
            'label_source': config['clinical_file'], 'label_time': None, 'visit_time': None,
            'label_pairing': 'official_session_ID; calendar_dates_unavailable',
            'cross_dataset_overlap_status': 'OASIS2_overlap_known_members_unknown',
            'dementia_label': None, 'severity_label': None, 'final_label': None,
            'eligible': False, 'exclusion_reason': '',
        }
        reasons = []
        try:
            record['dementia_label'], record['severity_label'], record['final_label'] = map_labels(
                row['CDR'], config['allowed_cdr'])
        except ValueError as error:
            reasons.append(str(error))
        if row['Age'] is None or not np.isfinite(float(row['Age'])):
            reasons.append('missing_or_invalid_age')
        elif float(row['Age']) < config['minimum_age']:
            reasons.append('age_below_minimum')
        record['exclusion_reason'] = ';'.join(reasons)
        record['eligible'] = not reasons
        records.append(record)
    book.close()
    return records, table


def selected_member(name, sessions):
    path = PurePosixPath(name)
    if path.is_absolute() or '..' in path.parts or len(path.parts) < 3:
        return False
    if path.parts[1] not in sessions:
        return False
    base = path.name
    return (
        (base.endswith(('_t88_masked_gfc.hdr', '_t88_masked_gfc.img')) and 'T88_111' in path.parts)
        or (base.endswith(('_t88_masked_gfc_fseg.hdr', '_t88_masked_gfc_fseg.img')) and 'FSL_SEG' in path.parts)
        or base.endswith('_t88_masked_gfc_tra_90.gif')
        or (len(path.parts) == 3 and base in {f'{path.parts[1]}.txt', f'{path.parts[1]}.xml'})
    )


def extract_sources(config, records):
    sessions = {r['session_id'] for r in records if r['eligible']}
    source, target = resolve(config['source_dir']), resolve(config['raw_dir'])
    target.mkdir(parents=True, exist_ok=True)
    archives = sorted(source.glob('oasis_cross-sectional_disc*.tar.gz'),
                      key=lambda p: int(re.search(r'disc(\d+)', p.name)[1]))
    if len(archives) != 12:
        raise ValueError(f'Expected 12 OASIS-1 archives, found {len(archives)}')
    evidence = []
    for archive in archives:
        files = []
        print(f'Extract/check {archive.name}', flush=True)
        # Reading to gzip EOF verifies the compressed stream CRC, even after tar EOF.
        with gzip.open(archive, 'rb') as compressed:
            with tarfile.open(fileobj=compressed, mode='r|') as stream:
                for member in stream:
                    if not member.isfile() or not selected_member(member.name, sessions):
                        continue
                    dest = target.joinpath(*PurePosixPath(member.name).parts)
                    if not dest.resolve().is_relative_to(target.resolve()):
                        raise ValueError('Archive path escapes extraction root')
                    dest.parent.mkdir(parents=True, exist_ok=True)
                    incoming = stream.extractfile(member)
                    if dest.exists():
                        # A restart may reuse identical files, never overwrite different bytes.
                        import hashlib
                        digest = hashlib.sha256()
                        for block in iter(lambda: incoming.read(4 * 1024 * 1024), b''):
                            digest.update(block)
                        if sha256(dest) != digest.hexdigest():
                            raise ValueError(f'Existing extraction differs: {dest}')
                    else:
                        with dest.open('xb') as output:
                            shutil.copyfileobj(incoming, output, length=4 * 1024 * 1024)
                    files.append({'path': dest.relative_to(target).as_posix(),
                                  'size': dest.stat().st_size, 'sha256': sha256(dest)})
            while compressed.read(4 * 1024 * 1024):
                pass
        evidence.append({'archive': archive.name, 'bytes': archive.stat().st_size,
                         'sha256': sha256(archive), 'files': files})
        print(f'  verified {len(files)} selected files and gzip CRC', flush=True)
    return evidence


def locate(root, session, pattern):
    matches = sorted(root.glob(f'disc*/{session}/{pattern}'))
    if len(matches) != 1:
        raise ValueError(f'{session}: expected one {pattern}, found {len(matches)}')
    return matches[0]


def read_volume(config, record):
    root, session = resolve(config['raw_dir']), record['session_id']
    image_path = locate(root, session, 'PROCESSED/MPRAGE/T88_111/*_t88_masked_gfc.hdr')
    seg_path = locate(root, session, 'FSL_SEG/*_t88_masked_gfc_fseg.hdr')
    image, seg = nib.load(image_path), nib.load(seg_path)
    expected = tuple(config['expected_shape'])
    # The official Analyze images may have a trailing singleton fourth dimension.
    volume = np.asarray(image.dataobj).squeeze().astype(np.float32)
    labels = np.asarray(seg.dataobj).squeeze()
    if volume.shape != expected or labels.shape != expected:
        raise ValueError(f'unexpected_T88_grid:{volume.shape},{labels.shape}')
    for loaded in (image, seg):
        if not np.allclose(loaded.header.get_zooms()[:3], config['expected_voxel_mm']):
            raise ValueError('unexpected_voxel_spacing')
        if loaded.header.endianness != '>':
            raise ValueError('unexpected_endianness_for_official_OASIS1')
    if not np.isfinite(volume).all() or not np.isfinite(labels).all():
        raise ValueError('nonfinite_volume')
    if not set(np.unique(labels).tolist()).issubset({0, 1, 2, 3}):
        raise ValueError('unknown_FSL_SEG_labels')
    mask = labels > 0
    if not mask.any() or np.ptp(volume[mask]) == 0:
        raise ValueError('empty_or_constant_brain')
    txt = locate(root, session, f'{session}.txt').read_text(encoding='utf-8', errors='replace')
    fields = dict(re.findall(r'^(AGE|CDR|M/F):\s*([^\r\n]+)', txt, flags=re.MULTILINE))
    for key, expected_value in [('CDR', record['cdr_raw']), ('AGE', record['age'])]:
        if key not in fields or float(fields[key]) != float(expected_value):
            raise ValueError(f'clinical_TXT_{key}_conflict')
    if fields.get('M/F', '')[:1].upper() != str(record['sex']).upper():
        raise ValueError('clinical_TXT_sex_conflict')
    tree = ET.parse(locate(root, session, f'{session}.xml')).getroot()
    subject_nodes = [n.text for n in tree.iter() if n.tag.endswith('}subject_ID')]
    quality = [n.text for n in tree.iter() if n.tag.endswith('}quality')]
    if tree.attrib.get('ID') != session or subject_nodes != [record['subject_id']]:
        raise ValueError('XML_session_subject_mismatch')
    if not quality or any(q != 'usable' for q in quality):
        raise ValueError('acquisition_quality_requires_review')
    return volume, mask, image_path, seg_path, image


def spatial_slices(volume, mask, config):
    size, canvas = config['output_size'], config['canvas_size']
    width, height = volume.shape[:2]
    if max(width, height) > canvas:
        raise ValueError('Canvas would crop the atlas grid')
    # Square physical field of view, centered padding, pixel-center aligned sampling.
    # Preserve disk-grid handedness; axis 2 is transverse per the OASIS fact sheet.
    offset = ((np.arange(size) + 0.5) * canvas / size - 0.5)
    x = offset - (canvas - width) / 2
    y = offset - (canvas - height) / 2
    xx, yy = np.meshgrid(x, y, indexing='xy')
    output, masks = [], []
    for z in config['axial_indices']:
        if not 0 <= z < volume.shape[2]:
            raise ValueError('Axial index out of grid')
        plane = map_coordinates(volume[:, :, z], [xx, yy], order=1,
                                mode='constant', cval=0, prefilter=False)
        plane_mask = map_coordinates(mask[:, :, z].astype(np.uint8), [xx, yy], order=0,
                                     mode='constant', cval=0, prefilter=False).astype(bool)
        if plane_mask.mean() < config['minimum_slice_mask_fraction']:
            raise ValueError(f'insufficient_brain_coverage_at_grid_z_{z}')
        output.append(np.where(plane_mask, plane, 0))
        masks.append(plane_mask)
    return np.asarray(output, dtype='<f4')[..., None], np.asarray(masks, dtype=np.uint8)[..., None]


def montage(images, masks, title, indices):
    size = images.shape[1]
    canvas = Image.new('RGB', (4 * size, 2 * (size + 20) + 24), 'black')
    draw = ImageDraw.Draw(canvas)
    draw.text((4, 4), title, fill='white')
    values = images[masks.astype(bool)]
    low, high = np.percentile(values, [1, 99])
    for k, z in enumerate(indices):
        gray = np.uint8(np.clip((images[k, :, :, 0] - low) / max(high - low, 1e-9), 0, 1) * 255)
        tile = Image.fromarray(gray).convert('RGB')
        x, y = (k % 4) * size, 24 + (k // 4) * (size + 20)
        canvas.paste(tile, (x, y + 20))
        draw.text((x + 3, y + 3), f'T88 grid z={z}', fill='white')
    return canvas


def audit(config, config_hash):
    target = resolve(config['manifest_dir'])
    if (target / 'audit.json').exists():
        raise FileExistsError('Audit exists; use a new version directory instead of overwriting')
    records, table = clinical_records(config)
    target.mkdir(parents=True, exist_ok=True)
    write_csv(target / 'clinical_candidates.csv', records)
    evidence = extract_sources(config, records)
    write_json(target / 'audit.json', {
        'config_sha256': config_hash, 'clinical_sha256': sha256(table),
        'authorization': 'user_confirmed_2026-10-18', 'archives': evidence,
        'clinical_records': len(records),
        'candidate_records': sum(r['eligible'] for r in records),
        'candidate_final_counts': dict(Counter(str(r['final_label']) for r in records if r['eligible'])),
    })


def prepare(config, config_hash):
    target = resolve(config['manifest_dir'])
    audited = read_json(target / 'audit.json')
    records, table = clinical_records(config)
    if audited['config_sha256'] != config_hash or audited['clinical_sha256'] != sha256(table):
        raise ValueError('Audit/config/clinical source mismatch; start a new version')
    for archive in audited['archives']:
        for item in archive['files']:
            if sha256(resolve(config['raw_dir']) / item['path']) != item['sha256']:
                raise ValueError(f"Extracted source changed since audit: {item['path']}")
    output = resolve(config['processed_dir'])
    if output.exists() or (target / 'prepared.json').exists():
        raise FileExistsError('Prepared output exists; use a new version directory')
    eligible = []
    exclusions = []
    for record in records:
        if not record['eligible']:
            exclusions.append(record)
            continue
        try:
            volume, mask, path, seg_path, image = read_volume(config, record)
            spatial_slices(volume, mask, config)  # deterministic coverage QC, no fitted parameters
            record.update({
                'image_path': path.relative_to(resolve(config['raw_dir'])).as_posix(),
                'scan_id': path.stem, 'image_sha256': sha256(path.with_suffix('.img')),
                'header_sha256': sha256(path), 'segmentation_sha256': sha256(seg_path.with_suffix('.img')),
                'segmentation_header_sha256': sha256(seg_path),
                'processing_version': config['version'],
                'grid_shape': list(volume.shape), 'voxel_mm': list(map(float, image.header.get_zooms()[:3])),
                'analyze_orientation_byte': image.header.binaryblock[image.header.structarr.dtype.fields['orient'][1]],
                'spatial_reference': 'official_T88_111_grid_no_verified_world_origin',
                'qc_pass': True, 'qc_status': 'automated_pass_visual_review_pending',
                'exclusion_reason': '', 'brain_min': float(volume[mask].min()),
                'brain_max': float(volume[mask].max()),
            })
            eligible.append(record)
        except (ValueError, OSError, ET.ParseError) as error:
            record.update(qc_pass=False, exclusion_reason=str(error))
            exclusions.append(record)
    # Earliest *eligible* visit; the decision is independent of model predictions.
    selected, seen = [], set()
    for record in sorted(eligible, key=lambda r: (r['subject_id'], r['visit_number'])):
        if record['subject_id'] in seen:
            record.update(qc_pass=False, exclusion_reason='later_eligible_visit')
            exclusions.append(record)
        else:
            seen.add(record['subject_id'])
            selected.append(record)
    folds = nested_folds(selected, config['outer_folds'], config['inner_folds'], config['seed'])
    # Persist subject partitions before writing any training slice artifacts.
    write_json(target / 'nested_folds.json', {
        'records_sha256': object_hash([(r['dataset'], r['subject_id'], r['session_id']) for r in selected]),
        'config_sha256': config_hash, 'seed': config['seed'], 'folds': folds,
    })
    output.mkdir(parents=True)
    (output / 'qc').mkdir()
    for index, record in enumerate(selected):
        volume, mask, _, _, _ = read_volume(config, record)
        images, masks = spatial_slices(volume, mask, config)
        dest = output / f"{record['session_id']}.npz"
        with dest.open('xb') as stream:
            np.savez_compressed(stream, images=images, masks=masks,
                                axial_indices=np.asarray(config['axial_indices']),
                                preprocessing_version=np.asarray(config['version']),
                                config_sha256=np.asarray(config_hash))
        record['processed_path'] = dest.relative_to(resolve('.')).as_posix()
        record['processed_sha256'] = sha256(dest)
        record['outer_test_fold'] = next(f['fold'] for f in folds if index in f['test'])
        record['slice_mask_fractions'] = masks.mean(axis=(1, 2, 3)).tolist()
        montage(images, masks, f"QC {record['session_id']} / disk-grid convention", config['axial_indices']).save(
            output / 'qc' / f"{record['session_id']}.png")
        if (index + 1) % 20 == 0:
            print(f'Prepared {index + 1}/{len(selected)} sessions', flush=True)
    write_json(target / 'subjects.json', selected)
    write_csv(target / 'subjects.csv', selected)
    if exclusions:
        write_csv(target / 'excluded.csv', exclusions)
    summary = {
        'config_sha256': config_hash, 'clinical_sha256': sha256(table),
        'subjects_sha256': sha256(target / 'subjects.json'),
        'folds_sha256': sha256(target / 'nested_folds.json'),
        'n_subjects': len(selected), 'n_slices': len(selected) * len(config['axial_indices']),
        'final_counts': dict(Counter(str(r['final_label']) for r in selected)),
        'excluded_records': len(exclusions),
        'exclusion_reasons': dict(Counter(r['exclusion_reason'] for r in exclusions)),
        'automatic_qc_only': True,
        'fold_counts': [{
            'fold': f['fold'],
            'train': dict(Counter(str(selected[i]['final_label']) for i in f['train'])),
            'test': dict(Counter(str(selected[i]['final_label']) for i in f['test'])),
            'inner': [{
                name: dict(Counter(str(selected[i]['final_label']) for i in inner[name]))
                for name in ('train', 'validation')
            } for inner in f['inner']],
        } for f in folds],
        'spatial_note': 'Official 176x208x176 T88 transverse grid; no inferred millimetre origin or extra registration.',
    }
    write_json(target / 'prepared.json', summary)
    print(summary, flush=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('stage', choices=['audit', 'prepare'])
    parser.add_argument('--config', default='training/configs/oasis1.json')
    args = parser.parse_args()
    config, config_hash = load_config(args.config)
    (audit if args.stage == 'audit' else prepare)(config, config_hash)


if __name__ == '__main__':
    main()
