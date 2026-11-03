"""Compare the packaged saved MRI reference and physical-board result."""
from pathlib import Path
import hashlib,json,csv,io,sys

def main():
 here=Path(__file__).resolve().parent
 load=lambda name:json.loads((here/name).read_text(encoding='utf-8'))
 reference=load('reference_result.json');actual=load('board_result.json');info=load('run_info.json')
 data=(here/info['input_file']).resolve()
 with data.open('rb') as f:digest=hashlib.file_digest(f,'sha256').hexdigest()
 if digest!=info['input_sha256']:raise RuntimeError('Input fingerprint differs')
 saved=list(csv.DictReader(io.StringIO((here/'comparison.csv').read_text(encoding='utf-8'))))
 checks={k:reference[k]==actual[k] for k in info['comparison_fields']}
 expected_rows=[]
 for k in info['comparison_fields']:
  for index in range(3) if k=='probabilities_abc' else [None]:
   a=reference[k][index] if index is not None else reference[k];b=actual[k][index] if index is not None else actual[k]
   expected_rows.append({'field':k+(f'[{index}]' if index is not None else ''),'reference':str(a),'measured':str(b),'absolute_difference':str(abs(b-a)) if isinstance(a,(int,float)) else '', 'equal':str(a==b)})
 if saved!=expected_rows:raise RuntimeError('Comparison CSV differs from saved result values')
 print(json.dumps({'input_sha256_matches':True,'classification_equal':checks,'scope':'saved same-input board regression; hardware not executed'},indent=2))
 return 0 if all(checks.values()) else 1
if __name__=='__main__':sys.exit(main())
