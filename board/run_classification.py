"""One classification through the production API; credentials remain in memory."""
from pathlib import Path
import argparse,getpass,http.client,json,time,uuid
def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--board',required=True);p.add_argument('--port',type=int,default=8080);p.add_argument('--clock-mhz',type=int,choices=[125,150],default=125);p.add_argument('--input',required=True);p.add_argument('--output',required=True);p.add_argument('--pairing-code');p.add_argument('--expected-result');a=p.parse_args()
 out=Path(a.output).resolve()
 if out.exists():raise FileExistsError('Choose a new output directory')
 payload=Path(a.input).read_bytes();credential=None
 def request(method,path,body=None):
  headers={};data=body
  if isinstance(body,dict):data=json.dumps(body).encode();headers['Content-Type']='application/json'
  elif body is not None:headers['Content-Type']='application/octet-stream'
  if credential:headers['Authorization']='Bearer '+credential
  connection=http.client.HTTPConnection(a.board,a.port,timeout=180)
  try:
   connection.request(method,path,data,headers);response=connection.getresponse();raw=response.read()
   if response.status>=400:raise RuntimeError('HTTP '+str(response.status)+': '+raw.decode())
   return json.loads(raw)
  finally:connection.close()
 health=request('GET','/v1/health')
 if health.get('runtime_variant')!='overlap-v1':raise RuntimeError('Board is not running overlap-v1')
 code=a.pairing_code or getpass.getpass('New one-time pairing code: ')
 credential=request('POST','/v1/pair',{'pairing_code':code})['doctor_token'];code=None
 task=str(uuid.uuid4());prefix='/v1/tasks/'+task;start=time.perf_counter()
 request('POST','/v1/tasks',dict(task_id=task,case_id='delivery-'+task,scan_id='scan-'+task,model_version='system-frozen-20261022-v1'));created=time.perf_counter()
 request('PUT',prefix+'/input',payload);uploaded=time.perf_counter();request('POST',prefix+'/start',{})
 deadline=time.monotonic()+600
 while True:
  state=request('GET',prefix)
  if state['status']=='complete':break
  if state['status'] in ['failed','cancelled']:raise RuntimeError('Classification '+state['status'])
  if time.monotonic()>deadline:raise TimeoutError('Classification timed out')
  time.sleep(.2)
 end=time.perf_counter();result=request('GET',prefix+'/result')
 if result.get('runtime_variant')!='overlap-v1' or result.get('target_clock_mhz')!=a.clock_mhz or result.get('slice_calls')!=131 or result.get('engine_calls')!=34:raise RuntimeError('Wrong runtime/hardware workload')
 compared=None
 if a.expected_result:
  expected=json.loads(Path(a.expected_result).read_text(encoding='utf-8'));keys=['probabilities_abc','probability_positive','score','prediction','class_id','severity_probability','severity_status'];compared={k:expected[k]==result[k] for k in keys}
 timing=dict(task_id=task,create_ms=(created-start)*1000,upload_and_validation_ms=(uploaded-created)*1000,create_to_observed_complete_ms=(end-start)*1000,runtime_total_ms=result['timings']['total_ms'],scope='host creation through observed completion; excludes PC MRI preparation and boot',full_runs=1,baseline_rerun=False,classification_equal=compared)
 out.mkdir(parents=True);(out/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8');(out/'timing.json').write_text(json.dumps(timing,indent=2),encoding='utf-8')
 print(json.dumps(timing,ensure_ascii=False,indent=2))
 if compared is not None and not all(compared.values()):raise RuntimeError('Classification differs from supplied expected result')
if __name__=='__main__':main()
