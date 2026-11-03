"""Offline by default; --hardware explicitly downloads the selected overlay."""
import argparse
import json
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from pynq_debug import compare, environment, run_dma, save_report, TransferFailure
from pynq_master import run_m_axi, validate_contract
from reference import golden, sample


def compute_vlnv(hwh, ip_name):
    """Free-running stream cores have no MMIO range, so inspect HWH modules."""
    matches = [module.attrib['VLNV'] for module in ET.parse(hwh).iter('MODULE')
               if module.attrib.get('FULLNAME', '').strip('/') == ip_name.strip('/')
               and module.attrib.get('IS_ENABLE', '1') == '1']
    if len(matches) != 1:
        raise ValueError('Expected one enabled compute module at the specified HWH path')
    return matches[0]


def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--hardware', action='store_true')
    p.add_argument('--interface', choices=['stream', 'master'], default='stream')
    p.add_argument('--bit', type=Path)
    p.add_argument('--ip', help='Verified compute IP hierarchy name')
    p.add_argument('--dma', help='Verified AXI DMA hierarchy name (stream only)')
    p.add_argument('--contract', type=Path, help='Verified master register JSON')
    p.add_argument('--n', type=int, default=100)
    p.add_argument('--seed', type=int, default=20261025)
    p.add_argument('--reports', type=Path, default=ROOT / 'reports')
    args = p.parse_args(argv)
    if args.hardware and argv is None:
        p.error('Use main([...]) in a retained Notebook kernel for hardware; see README')
    x = sample(args.n, args.seed)
    expected = golden(x)
    # Independent Python integer oracle also checks wrap-around corner cases.
    oracle = np.array([(3 * int(v) + 7) % (2**32) for v in x], dtype=np.uint32)
    comparison = compare(expected, oracle)
    if not comparison['pass']:
        raise RuntimeError('Reference self-check failed')
    report = {'stage': 'offline_reference', 'status': 'pass', 'hardware_tested': False,
              'environment': environment(), 'comparison': comparison}
    if args.hardware:
        if not args.bit or not args.ip or not args.bit.is_file() or not args.bit.with_suffix('.hwh').is_file():
            p.error('--hardware requires --bit, matching .hwh and --ip')
        if args.interface == 'stream' and not args.dma:
            p.error('stream requires --dma')
        if args.interface == 'master' and not args.contract:
            p.error('master requires --contract')
        from pynq import Overlay
        metadata = Overlay(str(args.bit), download=False).ip_dict
        expected_type = ':affine_u32_' + args.interface + ':'
        if expected_type not in compute_vlnv(args.bit.with_suffix('.hwh'), args.ip):
            raise ValueError('Expected this example compute IP; inspect HWH before download')
        contract = None
        if args.interface == 'master':
            contract = json.loads(args.contract.read_text(encoding='utf-8'))
            validate_contract(contract, ['x', 'y'], metadata[args.ip]['addr_range'])
            # N is the element count, not the byte count; explicitly supplied binding.
            if contract.get('example_n') != args.n:
                raise ValueError('Contract example_n must match --n; verify scalar n write')
            if contract.get('scalar_writes') != [[contract.get('example_n_offset'), args.n]]:
                raise ValueError('Exactly one verified n scalar write must match --n')
        elif args.dma not in metadata:
            raise ValueError('DMA name absent from HWH')
        ol = Overlay(str(args.bit), download=True)
        try:
            if args.interface == 'stream':
                _, report = run_dma(ol, args.dma, x, expected)
            else:
                _, report = run_m_axi(ol, args.ip,
                    {'x': {'access': 'read', 'data': x},
                     'y': {'access': 'write', 'expected': expected}}, contract)
        except TransferFailure as exc:
            print('Error report:', save_report(exc.report, args.reports))
            raise
        report['hardware_tested'] = True
    report['case'] = {'algorithm': 'u32_affine_mod_2_32', 'n': args.n, 'seed': args.seed,
                      'interface': args.interface}
    print(report['stage'] + ': ' + report['status'])
    print('Report:', save_report(report, args.reports))
    if report['status'] != 'pass':
        raise SystemExit(1)


if __name__ == '__main__':
    main()
