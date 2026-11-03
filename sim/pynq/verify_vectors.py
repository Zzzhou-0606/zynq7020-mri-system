"""Independently recalculate the packaged saved PYNQ physical-board outputs."""
from pathlib import Path
import json,csv,collections
import numpy as np

def main():
 here=Path(__file__).resolve().parent;counts=collections.Counter();files=0
 for p in sorted((here/'vectors').glob('*.npz')):
  record=json.loads(p.with_suffix('.json').read_text(encoding='utf-8'))
  with np.load(p,allow_pickle=False) as data:
   x=data['input'];expected=data['expected'];actual=data['actual']
   if record['path']=='fifo':golden=x
   elif record['path']=='affine':golden=((3*x.astype(np.uint64)+7)&0xffffffff).astype(np.uint32)
   else:raise RuntimeError('Unknown reference rule')
   if any(v.dtype!=np.uint32 or v.shape!=x.shape for v in (expected,actual)):raise RuntimeError('Shape/dtype mismatch: '+p.name)
   if not np.array_equal(expected,golden) or not np.array_equal(actual,golden):raise RuntimeError('Vector mismatch: '+p.name)
   counts[record['path']]+=int(x.size);files+=1
 summary=json.loads((here/'summary.json').read_text(encoding='utf-8'))
 if files!=summary['files'] or dict(counts)!=summary['elements_by_path']:raise RuntimeError('Summary count mismatch')
 print(json.dumps({'files':files,'elements_by_path':dict(counts),'mismatches':0,'scope':'saved arrays only; no hardware invocation'},indent=2))
if __name__=='__main__':main()
