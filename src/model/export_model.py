"""Regenerate the selected INT16 model from saved weights and ranges; no training."""
import argparse
import json
from pathlib import Path
import sys
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
sys.path[:0]=[str(HERE),str(HERE.parent)]
from training.reference.frozen_hierarchy import FrozenHierarchy
from training.quantization.frozen_v2 import QuantGraph
from training.export.export_quantized_v2 import export
def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--weights',type=Path,help='New complete classification bundle; default: supplied frozen weights')
    args=parser.parse_args()
    ranges=json.loads((ROOT/'data/models/calibration.json').read_text())['ranges']
    export(QuantGraph(FrozenHierarchy('cpu',bundle=args.weights),bits=16,ranges=ranges),args.output)
if __name__=='__main__': main()
