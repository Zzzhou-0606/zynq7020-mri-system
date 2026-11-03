"""Materialize the current hardware build exclusively from this delivery."""
from pathlib import Path
import argparse,json,shutil
ROOT=Path(__file__).resolve().parents[2]
def prepare(output):
 output=Path(output).resolve()
 if output.exists():raise FileExistsError(output)
 if output==ROOT or ROOT in output.parents:raise ValueError('Build outside the delivery directory')
 mapping=json.loads((ROOT/'build/rebuild_layout.json').read_text())
 for name in mapping:
  if not (ROOT/name).exists():raise FileNotFoundError(ROOT/name)
 output.mkdir(parents=True)
 for source,target in mapping.items():
  s=ROOT/source;t=output/target;t.parent.mkdir(parents=True,exist_ok=True)
  if s.is_dir():shutil.copytree(s,t,ignore=shutil.ignore_patterns('__pycache__','*.pyc'))
  else:shutil.copy2(s,t)
 for n in ['board','logs','results']:(output/n).mkdir()
 (output/'board/candidate.bif').write_text('all:\n{\n full.bit\n}\n')
 print('MRI_WORKSPACE_READY='+str(output))
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',required=True);prepare(p.parse_args().output)
