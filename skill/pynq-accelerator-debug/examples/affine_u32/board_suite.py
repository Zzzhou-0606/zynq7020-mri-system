"""Acceptance of independent FIFO and affine streams. Call run_suite in a Notebook."""
import json
import sys
import uuid
from datetime import datetime, timezone
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from pynq_debug import environment, run_dma, save_report, TransferFailure
from reference import golden
from run_example import compute_vlnv


def run_suite(bitfile, *, fifo_dma='axi_dma_0', affine_dma='axi_dma_affine',
              compute_ip='affine_u32_stream_0', directory=None):
    from pynq import Overlay
    bitfile = Path(bitfile).resolve()
    if fifo_dma == affine_dma:
        raise ValueError('FIFO and affine must use different DMA instances')
    if ':affine_u32_stream:' not in compute_vlnv(bitfile.with_suffix('.hwh'), compute_ip):
        raise ValueError('HWH does not contain the expected compute core')
    probe = Overlay(str(bitfile), download=False)
    for name in (fifo_dma, affine_dma):
        entry = probe.ip_dict[name]
        if ':axi_dma:' not in entry['type'] or int(entry['parameters']['C_SG_LENGTH_WIDTH']) != 14:
            raise ValueError('This boundary suite expects AXI DMA with 14-bit length')
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ') + '-' + uuid.uuid4().hex[:6]
    outdir = Path(directory or ROOT/'reports') / ('dual_acceptance-' + stamp)
    outdir.mkdir(parents=True, exist_ok=False)
    summary = {'stage': 'dual_stream_board_acceptance', 'status': 'running',
               'environment': environment(), 'bitfile': str(bitfile),
               'fifo_dma': fifo_dma, 'affine_dma': affine_dma, 'compute_ip': compute_ip,
               'seed': 20261025, 'cases': [], 'negative_checks': [], 'reload_checks': []}

    def persist():
        (outdir/'summary.json').write_text(json.dumps(summary, indent=2), encoding='utf-8')

    def transfer(overlay, name, x, expected, label, category='cases'):
        try:
            actual, report = run_dma(overlay, name, x, expected, timeout_s=3)
        except TransferFailure as exc:
            report = exc.report
            report['case'] = label
            save_report(report, outdir)
            raise
        report['case'] = label
        report['output_head'] = actual[:min(5, actual.size)].tolist()
        file = Path(save_report(report, outdir)).name
        vector_name = file.replace('.json', '.npz')
        np.savez_compressed(outdir/vector_name, input=x, expected=expected, actual=actual)
        record = {'name': label, 'dma': name, 'n': int(x.size), 'dtype': str(x.dtype),
                  'bytes': int(x.nbytes), 'status': report['status'],
                  'report': file, 'vectors': vector_name}
        summary[category].append(record)
        persist()
        if report['status'] != 'pass':
            raise AssertionError('Reference mismatch: '+label)
        print(label, report['status'], report['received_bytes'])

    try:
        ol = Overlay(str(bitfile), download=True)
        rng = np.random.default_rng(20261025)
        edges = np.array([0, 1, 0xffffffff, 0x80000000, 0x55555555], dtype=np.uint32)
        for n in (1, 3, 16, 100, 1024, 4095):
            patterns = {'zeros': np.zeros(n, dtype=np.uint32),
                        'ramp': np.arange(n, dtype=np.uint32),
                        'boundary': np.resize(edges, n),
                        'random': rng.integers(0, 2**32, n, dtype=np.uint32)}
            for pattern, x in patterns.items():
                # Alternate independent DMAs under the same loaded bitstream.
                transfer(ol, fifo_dma, x, x.copy(), f'fifo_{pattern}_{n}')
                transfer(ol, affine_dma, x, golden(x), f'affine_{pattern}_{n}')
        for n in (1, 3, 16383):
            x = rng.integers(0, 256, n, dtype=np.uint8)
            transfer(ol, fifo_dma, x, x.copy(), f'fifo_byte_boundary_{n}')
        x = np.arange(16, dtype=np.uint32)
        wrong = golden(x)
        wrong[5] ^= np.uint32(1)
        _, mismatch = run_dma(ol, affine_dma, x, wrong)
        assert mismatch['status'] == 'mismatch'
        assert mismatch['comparison']['first_bad_index'] == [5]
        summary['negative_checks'].append({'name': 'wrong_reference_detected',
            'report': Path(save_report(mismatch, outdir)).name, 'first_bad_index': 5})
        for name in (fifo_dma, affine_dma):
            large = np.zeros(4096, dtype=np.uint32)
            try:
                run_dma(ol, name, large, large)
            except ValueError as exc:
                assert 'length limit' in str(exc)
                summary['negative_checks'].append({'name': 'oversize_rejected',
                                                   'dma': name, 'message': str(exc)})
            else:
                raise AssertionError('Oversize request was accepted')
        ol = Overlay(str(bitfile), download=True)
        transfer(ol, fifo_dma, x, x.copy(), 'fifo_after_reload', 'reload_checks')
        transfer(ol, affine_dma, x, golden(x), 'affine_after_reload', 'reload_checks')
        summary['status'] = 'pass'
        summary['fifo_cases_passed'] = sum(c['dma'] == fifo_dma for c in summary['cases'])
        summary['affine_cases_passed'] = sum(c['dma'] == affine_dma for c in summary['cases'])
        persist()
        print('ACCEPTANCE_PASS', str(outdir))
        return summary, str(outdir)
    except BaseException as exc:
        summary.update(status='error', error=type(exc).__name__+': '+str(exc))
        persist()
        print('ACCEPTANCE_ERROR', str(outdir))
        raise
