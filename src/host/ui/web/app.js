'use strict';

const $ = id => document.getElementById(id);
const labels = {pending:'待开始',running:'进行中',complete:'已完成',failed:'失败',connection_lost:'连接中断',incomplete:'未完成',not_applicable:'无需二级分类',not_required:'无需二级分类',skipped:'无需二级分类'};
const classNames = {0:'无痴呆倾向',1:'极轻倾向',2:'轻度及以上倾向'};
let state = null, selectedScan = null, selectedTask = null, historyAuto = true;
let page = 'overview', ready = false, polling = false, lastImported = null;
let scansSignature = '', tasksSignature = '', detailSignature = '', imageKey = '', imageEpoch = 0;
let toastTimer, addressTimer, addressChain = Promise.resolve();
let sliceInFlight = false, pendingSlice = null;
let deleteTarget = null, deleting = false;
let patientTarget = null, portalOperation = null, portalPolling = false, portalStarting = false;
let patientCard = null, patientCardKey = '';
let folderRows = [], folderLoading = false, batchSignature = '';
const queueSelection = new Set();
const text = (id, value) => { $(id).textContent = value == null ? '—' : String(value); };
const time = value => value ? new Date(value).toLocaleString('zh-CN', {timeZone:'Asia/Singapore', hour12:false}) : '—';
const statusLabel = value => labels[value] || value || '待开始';
const num = (value, digits=1) => typeof value === 'number' && Number.isFinite(value) ? value.toFixed(digits) : '—';
const backend = value => value === 'software_reference' ? '本机软件参考' : value === 'pl' ? 'PS + PL' : value === 'cpu' ? 'PS CPU' : value || '—';
const task = () => state?.tasks.find(item => item.task_id === selectedTask) || null;

window.showToast = function(message, error=false) {
  clearTimeout(toastTimer); text('toast', message); $('toast').hidden = false;
  $('toast').classList.toggle('error', error);
  toastTimer = setTimeout(() => { $('toast').hidden = true; }, error ? 10000 : 4000);
};
async function rpc(method, ...args) {
  const result = await window.pywebview.api[method](...args);
  if (!result.ok) throw new Error(result.error || '操作失败');
  return result.data;
}
function guarded(fn) { return async event => { try { await fn(event); } catch (error) { showToast(error.message, true); } }; }
function badge(value) {
  const node = document.createElement('span'); node.className = 'badge';
  if (value === 'complete') node.classList.add('success');
  if (['failed','connection_lost'].includes(value)) node.classList.add('error');
  if (value === 'running') node.classList.add('running');
  node.textContent = statusLabel(value); return node;
}
function updateRecent(settings) {
  $('recent-addresses').replaceChildren(...settings.recent_addresses.map(address => {
    const option = document.createElement('option'); option.value = address; return option;
  }));
}
function persistAddress() {
  clearTimeout(addressTimer);
  const address = $('address').value;
  addressChain = addressChain.catch(() => {}).then(async () => {
    const settings = await rpc('save_address', address);
    updateRecent(settings);
    // A reply for an earlier edit must never overwrite newer typing.
    if ($('address').value === address && document.activeElement !== $('address')) $('address').value = settings.address;
    return settings;
  });
  return addressChain;
}
function renderConnection() {
  const conn = state.connection, node = $('connection-status');
  const values = {connected:'已连接',disconnected:'未连接',checking:'检查中',failed:'连接失败'};
  node.textContent = values[conn.status] || '未连接';
  node.className = 'badge' + (conn.status === 'connected' ? ' success' : conn.status === 'failed' ? ' error' : conn.status === 'checking' ? ' running' : '');
  node.title = [conn.address,backend(conn.backend)].filter(Boolean).join(' · ');
  $('connect').disabled = conn.status === 'checking';
}
function renderScans() {
  const query = $('search').value.trim().toLowerCase();
  const rows = state.scans.filter(row => row.case_id.toLowerCase().includes(query));
  text('scan-count', state.scans.length);
  const signature = JSON.stringify([rows.map(row => [row.scan_id,row.case_id,row.created]), selectedScan, state.busy]);
  if (signature === scansSignature) return;
  scansSignature = signature;
  const scroll = $('scan-list').scrollTop;
  const nodes = rows.map(row => {
    const button = document.createElement('button');
    button.className = 'scan-item' + (row.scan_id === selectedScan ? ' selected' : '');
    button.dataset.scanId = row.scan_id; button.title = row.case_id + '\n' + time(row.created);
    button.setAttribute('aria-pressed', String(row.scan_id === selectedScan));
    const title = document.createElement('strong'); title.textContent = row.case_id;
    const date = document.createElement('small'); date.textContent = time(row.created);
    button.append(title,date); button.onclick = () => selectScan(row.scan_id);
    const remove = document.createElement('button'); remove.className = 'delete-scan';
    remove.dataset.deleteScan = row.scan_id; remove.disabled = state.busy;
    remove.title = '删除这次扫描'; remove.setAttribute('aria-label','删除扫描 '+row.case_id+' '+time(row.created));
    remove.innerHTML = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M3 6h18M9 6V3h6v3M5 6l1 15h12l1-15M10 10v7M14 10v7"/></svg>';
    remove.onclick = () => {deleteTarget=row.scan_id; text('delete-description',row.case_id+' · '+time(row.created)); $('delete-dialog').showModal();};
    const wrapper = document.createElement('div'); wrapper.className='scan-row'; wrapper.append(button,remove); return wrapper;
  });
  if (!nodes.length) {
    const empty = document.createElement('p'); empty.className = 'empty-note';
    empty.textContent = query ? '没有匹配的病例' : '导入第一份 MRI 扫描'; nodes.push(empty);
  }
  $('scan-list').replaceChildren(...nodes); $('scan-list').scrollTop = scroll;
}
async function selectScan(id) {
  if (id === selectedScan) return;
  selectedScan = id; selectedTask = null; historyAuto = true;
  tasksSignature = detailSignature = ''; invalidateImage();
  if (state) { state.scan = state.scans.find(scan => scan.scan_id === id); state.tasks = []; render(); }
  await refresh(true);
}
function setProgress(id, component) {
  const el = $(id);
  const percent = component.progress?.percent;
  if (component.status === 'running' && !Number.isFinite(percent)) el.removeAttribute('value');
  else el.value = component.status === 'complete' ? 100 : Math.max(0, Math.min(100, Number(percent) || 0));
}
function renderOverview() {
  const latest = state.tasks[0], classification = latest?.classification || {}, seg = latest?.segmentation || {}, result = classification.result;
  text('classification', result ? classNames[result.class_id] || '一级已完成' : classification.status === 'failed' ? '分类未完成' : classification.status === 'running' ? '正在分析' : '等待分析');
  text('score', num(result?.score,2));
  text('result-context', latest ? '分析时间 · ' + time(latest.created) : '选择扫描后查看最新任务');
  const measurement = seg.measurement;
  text('left-volume',num(measurement?.volumes_mm3?.[0])); text('right-volume',num(measurement?.volumes_mm3?.[1]));
  text('left-ratio',measurement ? num(measurement.hippocampus_percent_parenchyma?.[0],3) + '%' : '—');
  text('right-ratio',measurement ? num(measurement.hippocampus_percent_parenchyma?.[1],3) + '%' : '—');
  text('severity',result ? (result.class_id === 0 ? '无需二级分类' : classNames[result.class_id] || '未完成') : '待完成');
  text('severity-score',result?.severity_probability != null ? '轻度及以上分数 ' + num(result.severity_probability,4) : result?.severity_status === 'incomplete' ? '二级结果待收取' : result?.class_id === 0 ? '一级分类已完成' : '等待分类结果');
  text('backend',backend(result?.execution_backend || (latest?.backend === 'software_reference' ? latest.backend : latest ? '板端任务' : null)));
  text('classification-state', statusLabel(classification.status)); text('segmentation-state',seg.cancelled ? '已停止' : statusLabel(seg.status));
  setProgress('class-progress',classification); setProgress('seg-progress',seg);
  const cp = classification.progress || {};
  const progressText = [cp.stage, cp.percent != null ? num(cp.percent,1) + '%' : '', cp.completed_slices != null ? cp.completed_slices + ' 片已完成' : ''].filter(Boolean).join(' · ');
  text('class-message', classification.error || result?.severity_error || (result ? '模型分类结果已保存' : progressText || classification.stage || '等待任务'));
  text('seg-message',seg.error || seg.measurement_error || (seg.status === 'complete' ? (seg.source === 'cache' ? '已载入本地分割缓存' : '脑区分割与量测已完成') : seg.status === 'running' ? seg.progress?.message || '正在准备脑区分割，请稍候' : '等待任务'));
  $('class-message').classList.toggle('error-text', Boolean(classification.error || result?.severity_error));
  $('seg-message').classList.toggle('error-text', Boolean(seg.error || seg.measurement_error));
  text('overview-task',latest ? '最近任务 · ' + latest.task_id.slice(0,8) : '暂无分析记录');
  $('export-overview').disabled = !latest;
}
function renderHistory() {
  if (historyAuto || !state.tasks.some(row => row.task_id === selectedTask)) selectedTask = state.tasks[0]?.task_id || null;
  text('task-count',state.tasks.length); $('tasks-empty').hidden = Boolean(state.tasks.length);
  const signature = JSON.stringify([selectedTask, state.tasks.map(row => [row.task_id,row.created,row.backend,row.classification.status,row.segmentation.status])]);
  if (signature !== tasksSignature) {
    tasksSignature = signature;
    const scroll = $('task-scroll').scrollTop;
    const rows = state.tasks.map(row => {
      const tr = document.createElement('tr'); tr.tabIndex = 0; tr.dataset.taskId = row.task_id;
      tr.classList.toggle('selected', row.task_id === selectedTask); tr.setAttribute('aria-selected', String(row.task_id === selectedTask));
      for (const value of [time(row.created), backend(row.classification.result?.execution_backend || row.backend)]) {
        const td = document.createElement('td'); td.textContent = value; td.title = value; tr.append(td);
      }
      for (const component of ['classification','segmentation']) { const td = document.createElement('td'); td.append(badge(row[component].status)); tr.append(td); }
      const choose = () => { selectedTask = row.task_id; historyAuto = false; detailSignature = ''; invalidateImage(); renderHistory(); renderPatientCard(); $('task-detail').scrollTop = 0; };
      tr.onclick = choose; tr.onkeydown = event => { if (event.key === 'Enter' || event.key === ' ') { event.preventDefault(); choose(); } };
      return tr;
    });
    $('task-list').replaceChildren(...rows); $('task-scroll').scrollTop = scroll;
  }
  const current = task(), signatureDetail = JSON.stringify([state.scan,current]);
  if (signatureDetail !== detailSignature) {
    detailSignature = signatureDetail;
    const detailScroll = $('task-detail').scrollTop, jsonScroll = $('raw-json').scrollTop, jsonX = $('raw-json').scrollLeft;
    text('history-selected', current ? time(current.created) : '选择一条记录');
    const result = current?.classification.result;
    const fields = current ? [
      ['任务编号',current.task_id],['执行入口',backend(current.backend)],
      ['执行后端',backend(result?.execution_backend)],['分类结果',result ? classNames[result.class_id] || '二级未完成' : statusLabel(current.classification.status)],
      ['模型评分',result ? num(result.score,2) + ' / 100' : '—'],
      ['A / B / C 分数',result?.probabilities_abc?.map(value => num(value,6)).join(' / ') || '—'],
      ['二级状态',statusLabel(result?.severity_status)],['二级分数',num(result?.severity_probability,6)],
      ['分割来源',current.segmentation.source === 'cache' ? '本地缓存' : current.segmentation.source === 'new_segmentation' ? '本次分割' : '—'],
      ['分类信息',current.classification.error || result?.severity_error || '—'],
      ['分割信息',current.segmentation.error || current.segmentation.measurement_error || '—']
    ] : [];
    $('detail-fields').replaceChildren(...fields.flatMap(([key,value]) => { const dt = document.createElement('dt'), dd = document.createElement('dd'); dt.textContent = key; dd.textContent = value; return [dt,dd]; }));
    text('raw-json',JSON.stringify({scan:state.scan,task:current},null,2));
    $('task-detail').scrollTop = detailScroll; $('raw-json').scrollTop = jsonScroll; $('raw-json').scrollLeft = jsonX;
  }
  $('export-history').disabled = !current;
  $('resume').disabled = !current || state.busy || current.backend === 'software_reference' || !['pending','running','connection_lost'].includes(current.classification.status);
}
function invalidateImage() {
  pendingSlice = null;
  imageEpoch++; imageKey = ''; $('slice-image').hidden = true; $('slice-image').removeAttribute('src');
  $('image-empty').hidden = false; $('slice-range').disabled = true; text('slice-position','— / —');
  text('image-task',''); text('image-orientation','');
}
function renderSlice(index=null) {
  const current = task();
  if (!current || current.segmentation.status !== 'complete') { invalidateImage(); return; }
  const epoch = imageEpoch, scan = selectedScan, id = current.task_id, axis = Number($('axis').value);
  const key = [scan,id,axis,current.segmentation.image,current.segmentation.labels].join('|');
  imageKey = key;
  // Coalesce intermediate positions without waiting for dragging to stop.
  // Only context changes invalidate replies; newer positions must not starve
  // the display by discarding every frame that finishes during continuous input.
  pendingSlice = {epoch,scan,id,axis,index,created:current.created};
  drainSlices();
}
async function drainSlices() {
  if (sliceInFlight) return;
  sliceInFlight = true;
  try {
    while (pendingSlice) {
      const {epoch,scan,id,axis,index,created} = pendingSlice;
      pendingSlice = null;
      try {
        const image = await rpc('render_slice',scan,id,axis,index);
        if (epoch !== imageEpoch || page !== 'slices' || scan !== selectedScan || id !== selectedTask || axis !== Number($('axis').value)) continue;
        $('slice-image').src = image.image; $('slice-image').hidden = false; $('image-empty').hidden = true;
        $('slice-range').max = image.length-1; $('slice-range').disabled = false;
        // A completed frame can trail the pointer. Keep the thumb at the user's
        // latest requested position while its next frame is pending.
        if (!pendingSlice) {
          $('slice-range').value = image.index;
          text('slice-position', (image.index+1) + ' / ' + image.length);
        }
        text('image-task',time(created));
        text('image-orientation',['矢状位 · 屏幕左侧：后方 · 屏幕上方：上方','冠状位 · 屏幕左侧：解剖左侧 · 屏幕上方：上方','轴位 · 屏幕左侧：解剖左侧 · 屏幕上方：前方'][axis]);
      } catch (error) {
        if (epoch === imageEpoch) { invalidateImage(); showToast(error.message,true); }
      }
    }
  } finally { sliceInFlight = false; }
}
function render() {
  renderConnection(); renderScans();
  renderBatch();
  text('case-title',state.scan?.case_id || '选择一个病例');
  text('scan-subtitle',state.scan ? '导入于 ' + time(state.scan.created) + ' · ' + (state.scan.metadata.has_native ? '原生 MRI 已导入' : 'T88 分类影像') : '从左侧选择扫描记录，或导入新的 MRI 影像。');
  $('analyze').disabled = !state.scan || !state.can_analyze || portalStarting; $('import-open').disabled = state.busy;
  $('settings-open').disabled = state.busy;
  $('stop').disabled = !state.can_stop || state.stopping;
  text('stop',state.stopping ? '正在停止…' : '停止');
  text('analyze',state.can_analyze ? '分析当前病例' : state.stopping ? '正在停止…' : state.batch?.running && !state.batch.single ? '批量运行中…' : state.queue?.rows.some(r=>r.scan_id===selectedScan&&['sync_wait','publishing'].includes(r.status)) ? '当前病例同步中…' : state.busy ? '任务运行中…' : '分析当前病例');
  const syncRows=(state.queue?.rows || []).filter(r=>['sync_wait','publishing'].includes(r.status));
  const progress=state.portal_progress;
  const syncText=syncRows.map(r=>{
    let stage=r.status==='sync_wait'?'等待同步':'同步中';
    if(progress?.task_id===r.task_id){
      stage=({checking:'核对任务',issuing:'生成访问码',preparing:'准备影像',rendering:'生成切片',uploading:'上传影像',complete:'同步完成'})[progress.stage] || stage;
      if(Number.isInteger(progress.current)&&Number.isInteger(progress.total))stage+=' '+progress.current+'/'+progress.total;
    }
    return r.case_id+'（'+stage+'）';
  }).join('、');
  $('background-sync').hidden=!syncRows.length;
  text('background-sync','影像后台同步：'+syncText+(state.can_analyze?' · 可开始当前病例分析':''));
  text('status',state.message); $('status').title = state.message; $('status').classList.toggle('error-text',state.level === 'error');
  renderOverview(); renderHistory();
  renderPatientCard();
  if (page === 'slices') {
    const current = task();
    const key = current ? [selectedScan,current.task_id,Number($('axis').value),current.segmentation.image,current.segmentation.labels].join('|') : '';
    if (key !== imageKey && current?.segmentation.status === 'complete') renderSlice();
    else if (current?.segmentation.status !== 'complete') invalidateImage();
  }
}
function updateQueueSelection() {
  const eligible=(state?.queue?.rows || []).filter(r=>r.selectable);
  const valid=new Set(eligible.map(r=>r.scan_id));
  for(const id of queueSelection) if(!valid.has(id)) queueSelection.delete(id);
  const busy=state?.busy || portalStarting || Boolean(portalOperation) || Boolean(state?.queue?.blocked_reason);
  text('batch-selected','分析选中（'+queueSelection.size+'）');
  text('batch-analyze','分析全部（'+eligible.length+'）');
  $('batch-selected').disabled=busy || !queueSelection.size;
  $('batch-analyze').disabled=busy || !eligible.length;
  $('batch-select-all').disabled=state?.busy || !eligible.length;
  $('batch-select-all').checked=Boolean(eligible.length) && queueSelection.size===eligible.length;
  $('batch-select-all').indeterminate=queueSelection.size>0 && queueSelection.size<eligible.length;
  $('batch-analyze').title=state?.queue?.blocked_reason || '分析病例库中全部待分析病例';
}
function renderBatch() {
  const rows=state.queue?.rows || [], batch=state.batch;
  updateQueueSelection();
  text('batch-summary',(state.busy ? '正在处理 · ' : '')+'待分析 / 同步 '+rows.length+' 例');
  text('batch-error',batch?.error || (!state.busy ? state.queue?.blocked_reason : '') || '');
  text('batch-empty',rows.length ? '' : '没有待分析病例。已完成结果可从左侧病例库查看。');
  const report=batch && !batch.analyze && !batch.running ? batch.rows : [];
  text('import-report',report.length ? '最近导入：'+report.map(r=>(r.case_id || r.source)+' '+(r.status==='duplicate'?'已存在，跳过':r.status==='failed'?'失败：'+r.error:'已导入')).join('；') : '');
  const signature=JSON.stringify([rows,state.portal_progress,state.busy]);
  if(batchSignature===signature) return;
  batchSignature=signature;
  const descriptions={imported:'待分析',analyzing:'正在分析',sync_wait:'分析已结束 · 等待影像同步',publishing:'后台发布 / 同步影像',partial:'分析未完成',failed:'失败',interrupted:'任务未结束 / 请重连'};
  $('batch-list').replaceChildren(...rows.map(row=>{
    const tr=document.createElement('tr');
    const choose=document.createElement('td'),id=document.createElement('td'),source=document.createElement('td'),status=document.createElement('td');
    const check=document.createElement('input');check.type='checkbox';check.dataset.queueScan=row.scan_id;check.checked=queueSelection.has(row.scan_id);
    check.disabled=state.busy || !row.selectable;check.setAttribute('aria-label','选择病例 '+row.case_id);
    check.onchange=()=>{if(check.checked)queueSelection.add(row.scan_id);else queueSelection.delete(row.scan_id);updateQueueSelection();};choose.append(check);
    const button=document.createElement('button');button.className='quiet';button.textContent=row.case_id;
    button.onclick=guarded(async()=>{await selectScan(row.scan_id);switchPage('overview');});id.append(button);
    source.textContent=row.source;
    status.textContent=(descriptions[row.status] || row.status)+(row.error ? ' · '+row.error : '');
    const progress=state.portal_progress;
    if(row.status==='publishing' && progress?.task_id===row.task_id) status.textContent+=' · '+(progress.stage==='rendering' ? progress.current+' / '+progress.total+' 张' : progress.stage==='uploading' ? '上传中' : progress.code_ready ? '访问码已生成' : '正在生成访问码')+' · '+progress.elapsed+' 秒';
    if(['failed','partial','interrupted'].includes(row.status))status.className='error-text';
    tr.append(choose,id,source,status);return tr;
  }));
}
function renderFolderPreview() {
  const valid=folderRows.filter(row=>row.ready);
  text('folder-summary',folderRows.length ? '识别 '+folderRows.length+' 例，可导入 '+valid.length+' 例。编号在验证通过后自动分配。' : '自动匹配 T88 影像、脑掩膜和原生 MRI。');
  $('folder-preview').replaceChildren(...folderRows.map(row=>{
    const box=document.createElement('div'); box.className='folder-row';
    const label=document.createElement('label'), check=document.createElement('input');
    check.type='checkbox';check.checked=row.ready && !row.existing;check.disabled=!row.ready;check.dataset.rowId=row.id;
    label.append(check,document.createTextNode(row.source+' · '+(row.existing?'已有病例 '+row.existing.case_id+'，默认跳过；勾选可核对更新':row.ready?'可导入':row.errors.join('；'))));box.append(label);
    const detail=document.createElement('details'), summary=document.createElement('summary');summary.textContent='查看匹配文件';detail.append(summary);
    for(const [key,name] of [['image','T88'],['mask','掩膜'],['native','原生 MRI']]) {
      const line=document.createElement('p');line.textContent=name+'：'+(row[key] || '未确定');detail.append(line);
    }
    box.append(detail); if(!row.ready) box.classList.add('error-text');return box;
  }));
}
async function refresh(force=false) {
  if (!ready || (polling && !force)) return;
  const scan = selectedScan; polling = true;
  try {
    const next = await rpc('get_state',scan);
    if (scan !== selectedScan) return;
    state = next;
    if (next.portal_operation && !portalOperation) portalOperation = next.portal_operation;
    await pollPortal();
    if (selectedScan && !next.scan) {
      selectedScan = selectedTask = null; historyAuto = true;
      tasksSignature = detailSignature = ''; invalidateImage();
    }
    if (next.imported_scan && next.imported_scan !== lastImported) {
      lastImported = next.imported_scan;
      await selectScan(next.imported_scan); return;
    }
    render();
  } catch (error) { text('status',error.message); $('status').title = error.message; }
  finally { polling = false; }
}
function switchPage(next) {
  if (next === 'patient' && page === 'overview') { selectedTask = state?.tasks[0]?.task_id || null; historyAuto = true; }
  page = next;
  document.querySelectorAll('.tab').forEach(node => { node.classList.toggle('active',node.dataset.page === page); node.setAttribute('aria-selected',String(node.dataset.page === page)); });
  document.querySelectorAll('.page').forEach(node => node.classList.toggle('active',node.id === 'page-' + page));
  if (page === 'slices') { invalidateImage(); renderSlice(); }
  renderPatientCard();
}

function canPublish(current) {
  return current?.classification.status === 'complete' && /^https?:\/\//.test(current.backend);
}
const patientTask = () => page === 'overview' ? state?.tasks[0] : task();
function renderPatientSync(current) {
  const progress = state?.portal_progress;
  const active = progress?.kind === 'publish' && progress.task_id === current?.task_id;
  const descriptions = {checking:'正在核对板端任务',issuing:'正在生成访问码',preparing:'访问码已生成，正在准备完整影像',rendering:'正在生成三轴切片',uploading:'正在上传影像并等待板端校验',complete:'完整影像已同步',images_failed:'完整影像同步失败，访问码仍可使用'};
  const bar = $('patient-sync-progress'); bar.hidden = !active;
  let message = '';
  if (active) {
    message = descriptions[progress.stage] || '正在处理患者访问';
    if (progress.stage === 'rendering' && progress.total > 0) {
      bar.value = 100*progress.current/progress.total;
      message += ' · '+progress.current+' / '+progress.total+' 张';
    } else bar.removeAttribute('value');
    message += ' · 已用时 '+progress.elapsed+' 秒';
  } else if (patientCard?.image_status === 'complete') message = patientCard.images_reused ? '已复用板端完整三轴影像，本次未重复上传。' : '完整三轴影像已同步';
  else if (patientCard?.image_status === 'failed') message = '完整影像同步失败；结果和访问码仍可使用，可重新发布重试。';
  else if (patientCard?.image_status === 'stopped') message = '影像同步已停止；已生成的访问码保留，可稍后重新发布。';
  else if (patientCard?.image_status === 'preparing') message = '完整影像同步尚未完成，可重新发布重试。';
  else if (patientCard?.status === 'published') message = '可查看分析结果和板端已有关键切面。';
  text('patient-sync-status',message); $('patient-sync').hidden = !message;
}
async function renderPatientCard() {
  const current = patientTask();
  const eligible = canPublish(current);
  $('patient-card').hidden = !eligible; $('patient-empty').hidden = Boolean(eligible);
  const busy = state?.busy || portalStarting || Boolean(portalOperation);
  $('patient-update').disabled = busy; $('patient-card-revoke').disabled = busy;
  if (!eligible) { patientCard = null; patientCardKey = ''; return; }
  renderPatientSync(current);
  const key = [selectedScan,current.task_id,state.publication_revision].join('|');
  if (key === patientCardKey) return;
  patientCardKey = key; patientCard = null; $('patient-copy').disabled = true;
  text('patient-card-case',state.scan.case_id); text('patient-card-url',''); text('patient-card-code','—');
  text('patient-card-status','正在读取…'); $('patient-card-warning').hidden = true;
  try {
    const access = await rpc('get_patient_access',selectedScan,current.task_id);
    if (key !== patientCardKey) return;
    patientCard = access;
    renderPatientSync(current);
    const published = access.status === 'published' && !access.uncertain;
    text('patient-card-status',published ? '已发布 · '+time(current.created) : access.uncertain ? '访问状态待确认，请重新生成访问码' : access.status === 'revoked' ? '已撤销' : '尚无访问码，可重新发布');
    text('patient-card-url',published ? access.patient_url : current.backend+'/patient/');
    text('patient-card-code',published ? access.access_code : '—');
    $('patient-copy').disabled = !published;
    text('patient-card-warning',access.warning); $('patient-card-warning').hidden = !access.warning;
  } catch (_) {
    if (key === patientCardKey) { patientCardKey = ''; text('patient-card-status','访问码读取失败，请重试'); }
  }
}
function portalBusy(value) {
  for (const id of ['pair-submit','pair-close','patient-close','patient-publish','patient-revoke','patient-revoke-back','patient-revoke-submit']) $(id).disabled = value;
  $('doctor-token').disabled = value;
}
function openPatient(current) {
  if (!canPublish(current) || state.busy || portalOperation || portalStarting) return;
  patientTarget = {scan:selectedScan, id:current.task_id};
  text('patient-context',state.scan.case_id+' · '+time(current.created)+'\n任务 '+current.task_id+'\n开发板 '+current.backend);
  $('patient-slices').checked = current.segmentation.status === 'complete';
  $('patient-slices').disabled = current.segmentation.status !== 'complete';
  $('patient-actions').hidden = false; $('patient-revoke-confirm').hidden = true;
  text('patient-status',current.segmentation.status === 'complete' ? '' : '当前任务没有完成的脑区影像，将发布结果与板端已有关键切面。');
  $('patient-dialog').showModal();
}
async function startPortal(method, ...args) {
  if (portalStarting || portalOperation) return;
  portalStarting = true; portalBusy(true);
  try {
    const result = await rpc(method,...args);
    portalOperation = result.operation_id;
    text(method === 'pair_board' ? 'pair-status' : 'patient-status', method === 'publish_patient' ? '正在生成访问码，完整影像随后同步…' : '正在处理，请稍候…');
  } finally {
    portalStarting = false;
    portalBusy(Boolean(portalOperation));
  }
  await refresh(true);
}
async function pollPortal() {
  if (!portalOperation || portalPolling) return;
  portalPolling = true;
  try {
    const result = await rpc('take_portal_result',portalOperation);
    if (result.status === 'pending') {
      portalBusy(true);
      if (result.kind === 'publish' && result.code_ready) $('patient-dialog').close();
      return;
    }
    portalOperation = null; portalBusy(false);
    if (result.status === 'missing') return;
    if (result.status === 'failed') {
      text(result.kind === 'pair' ? 'pair-status' : 'patient-status',result.error);
      showToast(result.error,true); return;
    }
    if (result.kind === 'pair') {
      $('pair-dialog').close(); showToast('开发板配对成功');
    } else if (result.kind === 'revoke') {
      $('patient-dialog').close(); showToast('患者访问已撤销');
    } else if (result.kind === 'publish') {
      $('patient-dialog').close();
    }
    patientCardKey = '';
    renderPatientCard();
  } finally { portalPolling = false; }
}
$('patient-update').onclick = () => openPatient(patientTask());
$('patient-card-revoke').onclick = () => {
  openPatient(patientTask()); $('patient-actions').hidden = true; $('patient-revoke-confirm').hidden = false;
};
$('patient-close').onclick = () => $('patient-dialog').close();
$('patient-dialog').addEventListener('close',() => { patientTarget = null; });
for (const id of ['pair-dialog','patient-dialog']) $(id).addEventListener('cancel',event => { if (portalOperation || portalStarting) event.preventDefault(); });
$('patient-publish').onclick = guarded(async () => {
  const target = patientTarget;
  if (target) await startPortal('publish_patient',target.scan,target.id,$('patient-slices').checked,true);
});
$('patient-revoke').onclick = () => { $('patient-actions').hidden = true; $('patient-revoke-confirm').hidden = false; };
$('patient-revoke-back').onclick = () => { $('patient-actions').hidden = false; $('patient-revoke-confirm').hidden = true; };
$('patient-revoke-submit').onclick = guarded(async () => {
  const target = patientTarget;
  if (target) await startPortal('revoke_patient',target.scan,target.id,true);
});
$('pair-open').onclick = guarded(async () => {
  if (state.busy || portalOperation || portalStarting) return;
  const settings = await persistAddress();
  $('settings-dialog').close(); text('pair-address',settings.address); text('pair-status','');
  $('doctor-token').value = ''; $('pair-dialog').showModal(); $('doctor-token').focus();
});
$('pair-close').onclick = () => $('pair-dialog').close();
$('pair-dialog').addEventListener('close',() => { $('doctor-token').value = ''; });
$('pair-form').onsubmit = guarded(async event => {
  event.preventDefault();
  const token = $('doctor-token').value; $('doctor-token').value = '';
  await startPortal('pair_board',$('pair-address').textContent,token);
});
$('patient-copy').onclick = guarded(async () => {
  if (patientCard?.status !== 'published' || patientCard.uncertain) return;
  const content = '患者地址：'+patientCard.patient_url+'\n病例编号：'+patientCard.case_id+'\n访问码：'+patientCard.access_code;
  try { await navigator.clipboard.writeText(content); }
  catch (_) {
    const field = document.createElement('textarea'); field.value = content; field.className = 'clipboard-field';
    document.body.append(field); field.select();
    const copied = document.execCommand('copy'); field.remove();
    if (!copied) throw new Error('复制失败，请选中后按 Ctrl+C。');
  }
  showToast('患者地址、病例编号和访问码已复制');
});
document.querySelectorAll('.tab').forEach(button => button.onclick = () => switchPage(button.dataset.page));
$('search').oninput = () => state && renderScans();
$('address').oninput = () => { clearTimeout(addressTimer); addressTimer = setTimeout(() => { if ($('address').value.trim()) persistAddress().catch(error => showToast(error.message,true)); },600); };
$('address').onchange = guarded(persistAddress);
$('connect').onclick = guarded(async () => {
  const settings = await persistAddress(); $('connect').disabled = true; text('connection-status','检查中');
  try { const reply = await rpc('check_connection',settings.address); updateRecent(reply.settings); showToast('开发板连接成功 · ' + backend(reply.health.backend)+'；'+(reply.time_sync?.message || '')); }
  finally { await refresh(true); }
});
$('settings-open').onclick = () => $('settings-dialog').showModal();
async function savePreferences(){await rpc('save_preferences',$('mode').value,$('device').value);text('mode-label',$('mode').selectedOptions[0].textContent);}
$('mode').onchange=guarded(savePreferences);$('device').onchange=guarded(savePreferences);
$('import-open').onclick = () => $('import-dialog').showModal();
$('import-close').onclick = () => $('import-dialog').close();
$('import-mode').onchange = () => {
  const manual=$('import-mode').value==='manual';
  $('manual-import').hidden=!manual; $('folder-import').hidden=manual;
};
$('folder-pick').onclick = guarded(async () => {
  if(folderLoading) return;
  folderLoading=true; $('folder-pick').disabled=true;
  try {
    const path=await rpc('choose_folder'); if(!path) return;
    folderRows=[]; renderFolderPreview(); $('import-folder').value=path; text('folder-summary','正在识别文件…');
    const preview=await rpc('preview_folder',path);folderRows=preview.rows;renderFolderPreview();
  } finally {folderLoading=false;$('folder-pick').disabled=false;}
});
for (const id of ['delete-close','delete-cancel']) $(id).onclick = () => {if (!deleting) $('delete-dialog').close();};
$('delete-dialog').addEventListener('cancel',event => {if (deleting) event.preventDefault();});
$('delete-form').onsubmit = guarded(async event => {
  event.preventDefault(); if (deleting || !deleteTarget) return;
  deleting = true; $('delete-confirm').disabled = true;
  try {
    const id = deleteTarget;
    const result=await rpc('delete_scan',id,true);
    if (selectedScan === id) {selectedScan=selectedTask=null; historyAuto=true; tasksSignature=detailSignature=''; invalidateImage();}
    $('delete-dialog').close(); showToast(result.number_released?'扫描已删除，编号可以复用':'扫描已删除，编号继续保留'); await refresh(true);
  } finally {deleting=false; $('delete-confirm').disabled=false;}
});
document.querySelectorAll('[data-pick]').forEach(button => button.onclick = guarded(async () => { const path = await rpc('choose_file'); if (path) $('import-'+button.dataset.pick).value = path; }));
$('import-form').onsubmit = guarded(async event => {
  event.preventDefault(); if(folderLoading) return;
  if($('import-mode').value==='manual') {
    const values={confirmed:$('import-confirm').checked};
    for(const key of ['image','mask','native']) values[key]=$('import-'+key).value.trim();
    await rpc('import_scan',values);
  } else {
    const ids=[...$('folder-preview').querySelectorAll('input:checked')].map(input=>input.dataset.rowId);
    await rpc('import_folders',ids,$('import-confirm').checked);
    switchPage('batch');
  }
  $('import-dialog').close(); showToast('正在验证并导入扫描…'); await refresh(true);
});
$('analyze').onclick = guarded(async () => {
  const settings = await persistAddress();
  await rpc('analyze',selectedScan,settings.address,$('mode').value,$('device').value);
  historyAuto = true; switchPage('overview'); showToast('分析任务已启动'); await refresh(true);
});
$('stop').onclick = guarded(async () => {
  $('stop').disabled=true;
  await rpc('stop');
  await refresh(true);
});
async function startQueue(selected) {
  const settings=await persistAddress();
  await rpc('analyze_batch',settings.address,$('mode').value,$('device').value,selected ? [...queueSelection] : null);
  showToast(selected ? '已开始分析选中病例' : '已开始分析全部待分析病例');await refresh(true);
}
$('batch-analyze').onclick=guarded(()=>startQueue(false));
$('batch-selected').onclick=guarded(()=>startQueue(true));
$('batch-select-all').onchange=()=>{
  queueSelection.clear();
  if($('batch-select-all').checked)for(const row of state.queue.rows)if(row.selectable)queueSelection.add(row.scan_id);
  batchSignature='';renderBatch();
};
$('resume').onclick = guarded(async () => { await rpc('resume',selectedScan,selectedTask); showToast('正在收取所选任务的板端结果'); await refresh(true); });
$('export-overview').onclick = guarded(async () => { const path = await rpc('export_report',selectedScan,state.tasks[0]?.task_id); if (path) showToast('报告已保存：'+path); });
$('export-history').onclick = guarded(async () => { const path = await rpc('export_report',selectedScan,selectedTask); if (path) showToast('报告已保存：'+path); });
$('copy-json').onclick = guarded(async () => {
  try { await navigator.clipboard.writeText($('raw-json').textContent); }
  catch (_) { const range = document.createRange(); range.selectNodeContents($('raw-json')); const selection = window.getSelection(); selection.removeAllRanges(); selection.addRange(range); if (!document.execCommand('copy')) throw new Error('复制失败，请选中数据后按 Ctrl+C。'); selection.removeAllRanges(); }
  showToast('JSON 已复制');
});
$('axis').onchange = () => { invalidateImage(); renderSlice(); };
$('slice-range').oninput = () => { const value = Number($('slice-range').value); text('slice-position',(value+1)+' / '+(Number($('slice-range').max)+1)); renderSlice(value); };
window.addEventListener('pywebviewready', guarded(async () => {
  if (ready) return; ready = true;
  state = await rpc('get_state'); $('address').value = state.settings.address; updateRecent(state.settings);
  $('mode').value=state.settings.mode || 'pl';$('device').value=state.settings.device || 'cpu';text('mode-label',$('mode').selectedOptions[0].textContent);
  if (state.scans.length) { selectedScan = state.scans[0].scan_id; await refresh(true); } else render();
  setInterval(refresh,800);
}));
