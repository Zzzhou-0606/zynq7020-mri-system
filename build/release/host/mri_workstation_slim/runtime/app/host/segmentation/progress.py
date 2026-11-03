"""Read bounded FastSurfer log progress without changing the running job."""
import re
import time


def read_progress(path):
    if not path.is_file():
        return {'stage':'准备分割环境', 'message':'正在准备模型和原生影像'}
    with path.open('rb') as stream:
        stream.seek(max(0,path.stat().st_size-262144))
        text=stream.read(262144).decode('utf-8',errors='replace')
    device=re.findall(r'Using device:\s*(\w+)',text)
    views=list(re.finditer(r'Run (coronal|sagittal|axial) prediction',text))
    result={'stage':'加载模型 / 预处理', 'device':device[-1].upper() if device else '',
            'updated_seconds':max(0,int(time.time()-path.stat().st_mtime))}
    if views:
        view=views[-1];name,index={'coronal':('冠状位',1),'sagittal':('矢状位',2),'axial':('轴位',3)}[view.group(1)]
        result['stage']=f'{name}（{index}/3）'
        batches=re.findall(r'\d+%\|[^\r\n]*?\|\s*(\d+)/(\d+)\s*\[',text[view.end():])
        if batches:
            current,total=map(int,batches[-1])
            if total>0 and current<=total:
                result.update(current=current,total=total,percent=100*current/total)
        if 'Creating brainmask based on segmentation' in text[view.end():] or 'Running volume-based QC' in text[view.end():]:
            result={'stage':'分割后处理 / 质量检查','device':result['device'],'updated_seconds':result['updated_seconds']}
    result['message']=' · '.join(filter(None,[result['device'],result['stage'],
        f"{result['current']} / {result['total']} 批次" if 'current' in result else '']))
    if result['updated_seconds']>=60:
        result['message']+=f" · 日志 {result['updated_seconds']} 秒未更新"
    return result
