"""Single-scan command adapter for the project's copied FastSurfer bundle.

Input must be a geometry-validated native MRI (not an arbitrary renamed T88
Analyze image). Python packages are supplied by the selected interpreter.
"""
import argparse
import json
from pathlib import Path
import re
import subprocess
import sys
from host.paths import segmentation_weights

VENDOR = Path(__file__).resolve().parents[2] / 'segmentation/fastsurfer'


def command(image, output, case_id, python, device='cpu', viewagg_device='cpu'):
    image, output = Path(image).resolve(), Path(output).resolve()
    if not image.is_file():
        raise FileNotFoundError(image)
    if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{0,79}', case_id):
        raise ValueError('Invalid case identifier')
    if (output / case_id).exists():
        raise FileExistsError('Preserve existing scan output: ' + str(output / case_id))
    args = [str(python), '-B', '-m', 'FastSurferCNN.run_prediction', '--t1', str(image),
            '--sd', str(output), '--sid', case_id, '--device', device,
            '--viewagg_device', viewagg_device, '--batch_size', '1', '--threads', '4', '--vox_size', '1']
    for short, plane in [('ax', 'axial'), ('cor', 'coronal'), ('sag', 'sagittal')]:
        weight = segmentation_weights() / f'aparc_vinn_{plane}_v2.0.0.pkl'
        if not weight.is_file():
            raise FileNotFoundError(weight)
        args.extend(['--ckpt_' + short, str(weight)])
    return args


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', required=True)
    parser.add_argument('--output', required=True)
    parser.add_argument('--case-id', required=True)
    parser.add_argument('--python', default=sys.executable)
    parser.add_argument('--device', choices=['cpu', 'cuda'], default='cpu')
    parser.add_argument('--viewagg-device', choices=['cpu', 'cuda'], default='cpu')
    parser.add_argument('--dry-run', action='store_true')
    options = parser.parse_args()
    args = command(options.input, options.output, options.case_id, options.python,
                   options.device, options.viewagg_device)
    if options.dry_run:
        print(json.dumps({'cwd': str(VENDOR), 'command': args, 'executed': False}, indent=2))
        return
    subprocess.run(args, cwd=VENDOR, check=True)


if __name__ == '__main__':
    main()
