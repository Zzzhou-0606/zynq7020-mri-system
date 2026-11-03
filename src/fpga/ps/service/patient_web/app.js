'use strict';
(() => {
 const $ = id => document.getElementById(id);
 const names = ['无痴呆倾向', '极轻倾向', '轻度及以上倾向'];
 const states = {pending:'等待分析',running:'正在分析',complete:'已完成',failed:'未完成',incomplete:'部分完成',connection_lost:'连接中断'};
 const axes = ['矢状位','冠状位','轴位'];
 const requests = new Set();
 let epoch = 0, viewEpoch = 0, profile = null, selected = null, signature = '', expiryTimer = null, pollTimer = null, refreshing = false;
 let panels = [];
 const text = (id, value) => { $(id).textContent = value == null ? '—' : String(value); };
 const number = (value, digits = 1) => typeof value === 'number' && Number.isFinite(value) ? value.toLocaleString('zh-CN', {minimumFractionDigits:digits,maximumFractionDigits:digits}) : '—';
 const finite = value => typeof value === 'number' && Number.isFinite(value);
 const time = value => {const d = new Date(value);return value && Number.isFinite(d.getTime()) ? d.toLocaleString('zh-CN',{hour12:false}) : '时间未提供';};
 const aborted = () => new DOMException('Request no longer current', 'AbortError');
 function message(id, value, error = false) {text(id,value);$(id).classList.toggle('error',error);}
 function release(panel) {
  clearTimeout(panel.timer);panel.sequence++;panel.controller?.abort();
  panel.image.removeAttribute('src');panel.image.hidden = true;
  if(panel.url) URL.revokeObjectURL(panel.url);
  panel.url = null;
 }
 function clearImages() {viewEpoch++;panels.forEach(release);panels=[];$('image-grid').replaceChildren();}
 function clearSession(note = '') {
  epoch++;clearTimeout(expiryTimer);clearInterval(pollTimer);expiryTimer=pollTimer=null;
  requests.forEach(c=>c.abort());requests.clear();clearImages();profile=null;selected=null;signature='';refreshing=false;
  $('report-select').replaceChildren();$('report-content').hidden=true;$('empty-reports').hidden=true;
  ['patient-id','report-count','report-date','classification','score','left-volume','right-volume','left-ratio','right-ratio','severity-score','severity-note','classification-status','segmentation-status','measurement-note'].forEach(id=>text(id,''));
  $('report-view').hidden=true;$('session-tools').hidden=true;$('login-view').hidden=false;
  $('login-form').reset();$('login-submit').disabled=false;$('refresh').disabled=false;
  message('page-message','');message('login-message',note,Boolean(note));
 }
 function expiry(value) {
  if(!finite(value))return true;
  if(value<=0){clearSession('登录已过期，请重新输入病人编号和访问码。');return false;}
  clearTimeout(expiryTimer);expiryTimer=setTimeout(()=>clearSession('登录已过期，请重新输入病人编号和访问码。'),Math.min(value,1800)*1000);return true;
 }
 async function api(path, options = {}, quiet401 = false) {
  const ticket = epoch, controller = options.controller || new AbortController();requests.add(controller);
  const config={method:options.method||'GET',credentials:'same-origin',cache:'no-store',redirect:'error',signal:controller.signal,headers:{Accept:options.image?'image/png,image/jpeg,image/webp':'application/json'}};
  if(options.body!==undefined){config.headers['Content-Type']='application/json';config.body=JSON.stringify(options.body);}
  try {
   const response=await fetch('/patient/api/'+path,config);
   if(ticket!==epoch)throw aborted();
   if(response.status===401){
    if(path!=='login')clearSession(quiet401?'':'登录已过期，请重新输入病人编号和访问码。');
    const e=new Error('unauthorized');e.status=401;throw e;
   }
   if(!response.ok){const e=new Error('request_failed');e.status=response.status;throw e;}
   const data=options.image?await response.blob():response.status===204?null:await response.json();
   if(ticket!==epoch)throw aborted();
   return data;
  } finally {requests.delete(controller);}
 }
 function validShape(task) {const s=task.images?.shape;return Array.isArray(s)&&s.length===3&&s.every(n=>Number.isInteger(n)&&n>0&&n<=4096)?s:null;}
 function currentTask() {return profile?.tasks.find(t=>t.task_id===selected)||null;}
 function newPanel(axis, shape, previews) {
  const card=document.createElement('article');card.className='image-card';
  const heading=document.createElement('div');heading.className='image-heading';
  const title=document.createElement('h3');title.textContent=shape?axes[axis]:'关键切面 '+(axis+1);
  const type=document.createElement('span');type.textContent=shape?'连续切片':'报告预览';heading.append(title,type);
  const stage=document.createElement('div');stage.className='image-stage';
  const img=document.createElement('img');img.alt=(shape?axes[axis]:'关键切面 '+(axis+1))+' MRI 脑区影像';img.hidden=true;img.draggable=false;
  const hint=document.createElement('p');hint.className='image-message';hint.setAttribute('role','status');stage.append(img,hint);
  const controls=document.createElement('div');controls.className='slice-controls';controls.hidden=!shape;
  const row=document.createElement('div'),label=document.createElement('label'),position=document.createElement('output');
  const range=document.createElement('input');range.type='range';range.id='slice-'+axis;label.htmlFor=range.id;label.textContent='切片位置';range.setAttribute('aria-label',axes[axis]+'切片位置');
  range.min='0';range.max=String(shape?shape[axis]-1:0);range.value=String(shape?Math.floor((shape[axis]-1)/2):0);position.htmlFor=range.id;
  row.append(label,position);controls.append(row,range);card.append(heading,stage,controls);$('image-grid').append(card);
  const panel={axis,image:img,hint,range,position,url:null,controller:null,sequence:0,timer:null,shape};panels.push(panel);
  const updatePosition=()=>{position.textContent=(Number(range.value)+1)+' / '+(shape?shape[axis]:1);};updatePosition();
  range.addEventListener('input',()=>{updatePosition();release(panel);hint.hidden=false;hint.textContent='正在载入切片…';panel.timer=setTimeout(()=>loadImage(panel),120);});
  if(shape||previews.includes(axis))loadImage(panel);else hint.textContent='本次报告暂未提供该切面。';
 }
 async function loadImage(panel) {
  const task=currentTask();if(!task)return;
  release(panel);panel.hint.hidden=false;panel.hint.textContent='正在载入影像…';
  const ticket=epoch,view=viewEpoch,seq=panel.sequence,id=task.task_id,index=Number(panel.range.value);
  const controller=new AbortController();panel.controller=controller;
  const path='tasks/'+encodeURIComponent(id)+(panel.shape?'/image/'+panel.axis+'/'+index:'/preview/'+panel.axis);
  const current=()=>ticket===epoch&&view===viewEpoch&&seq===panel.sequence&&id===selected;
  try {
   const blob=await api(path,{controller,image:true});if(!current())return;
   if(!['image/png','image/jpeg','image/webp'].includes(blob.type)||blob.size>20*1024*1024)throw new Error('bad_image');
   panel.url=URL.createObjectURL(blob);panel.image.onload=()=>{if(current())panel.hint.hidden=true;};
   panel.image.onerror=()=>{if(current()){release(panel);panel.hint.hidden=false;panel.hint.textContent='此影像暂时无法显示。';}};
   panel.image.src=panel.url;panel.image.hidden=false;
  } catch(e) {if(e.name!=='AbortError'&&current()){panel.hint.textContent='此影像暂时不可用，请刷新报告后重试。';panel.hint.hidden=false;}}
 }
 function renderReport(task) {
  clearImages();signature=JSON.stringify(task);$('report-content').hidden=!task;$('empty-reports').hidden=Boolean(task);
  if(!task)return;
  const c=task.classification||{},seg=task.segmentation||{},r=c.result||null,m=seg.measurement||null;
  const classId=r?.class_id;
  text('classification',r?(Number.isInteger(classId)&&classId>=0&&classId<=2?names[classId]:'二级未完成，分类待确认'):(states[c.status]||'暂无分类结果'));
  text('report-date',time(task.created_at));
  const probability=r?.probability_positive;
  text('score',finite(probability)&&probability>=0&&probability<=1?number(probability*100):finite(r?.score)&&r.score>=0&&r.score<=100?number(r.score):'—');
  text('left-volume',number(m?.volumes_mm3?.[0]));text('right-volume',number(m?.volumes_mm3?.[1]));
  // The supplied percentage field explicitly uses brain parenchyma.
  const denominator='脑实质';
  text('left-ratio','占'+denominator+'：'+(finite(m?.hippocampus_percent_parenchyma?.[0])?number(m.hippocampus_percent_parenchyma[0],3)+'%':'—'));
  text('right-ratio','占'+denominator+'：'+(finite(m?.hippocampus_percent_parenchyma?.[1])?number(m.hippocampus_percent_parenchyma[1],3)+'%':'—'));
  text('severity-score',finite(r?.severity_probability)?number(r.severity_probability,4):'—');
  text('severity-note',r?.severity_status==='incomplete'?'二级未完成，最终分类待确认':classId===0?'一级阴性，无需二级分类':finite(r?.severity_probability)?'轻度及以上倾向的模型分数':'暂无二级结果');
  ['classification','segmentation'].forEach((key)=>{const status=(task[key]||{}).status;const element=$(key+'-status');element.textContent=(key==='classification'?'模型分类 · ':'脑区分割 · ')+(states[status]||'待提供');element.className='badge '+(status==='complete'?'complete':status==='failed'?'failed':'');});
  text('measurement-note',m?'体积单位：mm³；比例以报告提供的分母计算。':'本次报告尚未提供海马体积量测。');
  const shape=validShape(task),previews=Array.isArray(task.previews)?task.previews:[];
  text('images-note',shape?'拖动各切面的滑块，浏览本次扫描的连续切片。':'本次提供关键切面预览；如需完整影像，请联系医生。');
  for(let axis=0;axis<3;axis++)newPanel(axis,shape,previews);
 }
 function installProfile(data) {
  if(!data||typeof data.case_id!=='string'||!Array.isArray(data.tasks))throw new Error('bad_profile');
  const tasks=data.tasks.filter(t=>t&&typeof t.task_id==='string');
  profile={case_id:data.case_id,tasks};if(!expiry(data.expires_in))return;
  if(!tasks.some(t=>t.task_id===selected))selected=tasks[0]?.task_id||null;
  $('login-view').hidden=true;$('report-view').hidden=false;$('session-tools').hidden=false;
  text('patient-id',data.case_id);text('report-count',tasks.length+' 条记录');
  const options=tasks.map(t=>{const o=document.createElement('option');o.value=t.task_id;o.textContent=time(t.created_at)+(t.scan_id?' · '+String(t.scan_id):'');return o;});
  $('report-select').replaceChildren(...options);$('report-select').disabled=!tasks.length;$('report-select').value=selected||'';
  const task=currentTask();if(JSON.stringify(task)!==signature)renderReport(task);
  if(!pollTimer)pollTimer=setInterval(()=>refreshMe(false,true),30000);
 }
 async function refreshMe(initial=false,silent=false) {
  if(refreshing)return;refreshing=true;const ticket=epoch;$('refresh').disabled=true;
  try {const data=await api('me',{},initial);if(ticket!==epoch)return;installProfile(data);if(!silent)message('page-message','报告已更新。');}
  catch(e){if(e.name!=='AbortError'&&e.status!==401&&ticket===epoch){if(profile)message('page-message','暂时无法连接报告服务，请稍后刷新。',true);else message('login-message',initial?'请输入病人编号和访问码。':'暂时无法载入报告，请稍后重试。',!initial);}}
  finally{if(ticket===epoch){refreshing=false;$('refresh').disabled=false;}}
 }
 $('login-form').addEventListener('submit',async event=>{
  event.preventDefault();const case_id=$('case-id').value.trim(),access_code=$('access-code').value;
  if(!case_id||!access_code)return;
  clearSession();const ticket=epoch;$('login-submit').disabled=true;message('login-message','正在验证登录信息…');
  try{const result=await api('login',{method:'POST',body:{case_id,access_code}});if(ticket!==epoch)return;if(!expiry(result?.expires_in))return;await refreshMe();if(profile)message('login-message','');}
  catch(e){if(e.name!=='AbortError'&&ticket===epoch)message('login-message',e.status===401?'病人编号或访问码不正确。':e.status===429?'尝试次数过多，请稍后再试。':'暂时无法登录，请检查连接后重试。',true);}
  finally{if(ticket===epoch)$('login-submit').disabled=false;}
 });
 $('logout').addEventListener('click',async()=>{clearSession();const ticket=epoch;$('login-submit').disabled=true;try{await api('logout',{method:'POST',body:{}});if(ticket===epoch)message('login-message','已退出登录。');}catch(e){if(ticket===epoch)message('login-message','页面数据已清空；服务暂未确认退出，请关闭此页面。',true);}finally{if(ticket===epoch)$('login-submit').disabled=false;}});
 $('refresh').addEventListener('click',()=>refreshMe());
 $('report-select').addEventListener('change',()=>{selected=$('report-select').value;message('page-message','');renderReport(currentTask());});
 window.addEventListener('pagehide',()=>clearSession());
 window.addEventListener('pageshow',event=>{if(event.persisted){clearSession();refreshMe(true);}});
 document.addEventListener('visibilitychange',()=>{if(!document.hidden&&profile)refreshMe(false,true);});
 refreshMe(true);
})();
