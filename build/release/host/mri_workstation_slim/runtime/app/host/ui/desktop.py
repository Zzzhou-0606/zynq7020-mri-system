"""Desktop doctor entry point. All Tk operations remain on the UI thread."""
import json
from pathlib import Path
from queue import Queue, Empty
import threading
import tkinter as tk
from tkinter import ttk, filedialog, messagebox
from PIL import ImageTk
from host.client.board import BoardClient
from host.visualization.slices import SliceViewer
from host.workflows.analysis import AnalysisWorkflow

CLASS_NAMES = {0:'无痴呆倾向',1:'极轻倾向',2:'轻度及以上倾向'}


class Desktop:
    def __init__(self, root, store):
        self.root,self.store = root,store
        self.events = Queue()
        self.workflow = AnalysisWorkflow(store,self.events.put)
        self.viewer = None
        self.busy = False
        self.selected_scan = None
        self.loaded_seg = None
        root.title('MRI FPGA 演示系统 · 本地病例管理')
        root.geometry('1180x820')
        root.minsize(1000,700)
        style = ttk.Style(root)
        style.theme_use('clam')
        style.configure('.',font=('Microsoft YaHei UI',10))
        style.configure('Title.TLabel',font=('Microsoft YaHei UI',18,'bold'))
        style.configure('Hint.TLabel',foreground='#52657b')
        outer = ttk.Frame(root,padding=16)
        outer.pack(fill='both',expand=True)
        ttk.Label(outer,text='MRI 冻结网络分析',style='Title.TLabel').pack(anchor='w')
        ttk.Label(outer,text='本地病例  /  两级分类  /  解剖脑区叠加',style='Hint.TLabel').pack(anchor='w',pady=(2,12))
        connection = ttk.Frame(outer)
        connection.pack(fill='x',pady=(0,12))
        ttk.Label(connection,text='开发板地址').pack(side='left')
        self.address = tk.StringVar(value='192.168.1.10:8080')
        ttk.Entry(connection,textvariable=self.address,width=25).pack(side='left',padx=8)
        ttk.Button(connection,text='检查连接',command=self.connect).pack(side='left')
        self.mode = tk.StringVar(value='开发板 PS + PL')
        ttk.Combobox(connection,textvariable=self.mode,values=['开发板 PS + PL','本机软件参考（调试）'],state='readonly',width=24).pack(side='left',padx=12)
        self.device = tk.StringVar(value='cpu')
        ttk.Label(connection,text='分割设备').pack(side='left')
        ttk.Combobox(connection,textvariable=self.device,values=['cpu','cuda'],state='readonly',width=6).pack(side='left',padx=6)
        body = ttk.Panedwindow(outer,orient='horizontal')
        body.pack(fill='both',expand=True)
        left = ttk.Frame(body,width=270)
        right = ttk.Frame(body)
        body.add(left,weight=1)
        body.add(right,weight=4)
        ttk.Label(left,text='病例 / 扫描历史').pack(anchor='w')
        self.search = tk.StringVar()
        ttk.Entry(left,textvariable=self.search).pack(fill='x',pady=8)
        self.search.trace_add('write',lambda *_:self.refresh_scans())
        self.scans = ttk.Treeview(left,columns=('case','time'),show='headings',selectmode='browse',height=15)
        self.scans.heading('case',text='病例编号')
        self.scans.heading('time',text='导入时间')
        self.scans.column('case',width=115)
        self.scans.column('time',width=135)
        self.scans.pack(fill='both',expand=True)
        self.scans.bind('<<TreeviewSelect>>',self.select_scan)
        ttk.Button(left,text='导入 MRI 扫描',command=self.import_dialog).pack(fill='x',pady=(10,5))
        self.run_button = ttk.Button(left,text='开始分析',command=self.analyze)
        self.run_button.pack(fill='x',pady=5)
        ttk.Button(left,text='重连并收取板端结果',command=self.resume).pack(fill='x',pady=5)
        ttk.Button(left,text='导出本次 JSON 报告',command=self.export_report).pack(fill='x',pady=5)
        self.tabs = ttk.Notebook(right)
        self.tabs.pack(fill='both',expand=True,padx=(12,0))
        self.overview = ttk.Frame(self.tabs,padding=14)
        self.slices_page = ttk.Frame(self.tabs,padding=10)
        self.history_page = ttk.Frame(self.tabs,padding=10)
        self.tabs.add(self.overview,text='分析结果')
        self.tabs.add(self.slices_page,text='脑区分割 / 切片')
        self.tabs.add(self.history_page,text='任务历史 / 详细数据')
        self.summary = tk.StringVar(value='导入 OASIS-1 T88 影像与脑掩膜，选择病例后开始分析。')
        ttk.Label(self.overview,textvariable=self.summary,font=('Microsoft YaHei UI',14,'bold'),wraplength=720).pack(anchor='w',pady=(5,18))
        self.progress = ttk.Progressbar(self.overview,maximum=100)
        self.progress.pack(fill='x',pady=5)
        self.result_text = tk.Text(self.overview,height=18,wrap='word',font=('Microsoft YaHei UI',11),relief='flat',padx=14,pady=12)
        self.result_text.pack(fill='both',expand=True,pady=10)
        ttk.Label(self.overview,text='提示分 = 100 × 一级融合分数；不是校准患病概率或严重程度量表。\n颜色表示解剖结构，不代表病灶或分类因果解释。仅供科研演示。',style='Hint.TLabel',wraplength=720).pack(anchor='w')
        controls = ttk.Frame(self.slices_page)
        controls.pack(fill='x')
        self.axis = tk.StringVar(value='冠状位')
        ttk.Combobox(controls,textvariable=self.axis,values=['矢状位','冠状位','轴位'],state='readonly',width=10).pack(side='left')
        self.axis.trace_add('write',lambda *_:self.change_axis())
        self.slice_index = tk.DoubleVar(value=0)
        self.slider = ttk.Scale(controls,from_=0,to=1,variable=self.slice_index,command=lambda _:self.draw_slice())
        self.slider.pack(side='left',fill='x',expand=True,padx=12)
        self.slice_label = ttk.Label(controls,text='—')
        self.slice_label.pack(side='left')
        self.canvas = tk.Canvas(self.slices_page,bg='#101926',highlightthickness=0,width=720,height=540)
        self.canvas.pack(fill='both',expand=True,pady=8)
        self.canvas.bind('<Configure>',lambda _:self.draw_slice())
        ttk.Label(self.slices_page,text='橙色：海马    绿色：内嗅皮层    蓝色：下颞皮层    红色：侧脑室',wraplength=720).pack(side='bottom',anchor='w',before=self.canvas)
        self.history = tk.Text(self.history_page,wrap='word',font=('Consolas',10))
        self.history.pack(fill='both',expand=True)
        self.status = tk.StringVar(value='就绪 · 数据仅保存在本地')
        ttk.Label(outer,textvariable=self.status,style='Hint.TLabel').pack(side='bottom',anchor='w',pady=(12,0),before=body)
        self.refresh_scans()
        self.root.after(200,self.consume_events)

    def background(self,work):
        def run():
            try:
                work()
            except Exception as error:
                self.events.put({'component':'notification','status':'failed','error':str(error)})
        threading.Thread(target=run,daemon=True).start()

    def connect(self):
        address = self.address.get()
        def work():
            value = BoardClient(address).health()
            self.events.put({'component':'notification','status':'complete','message':'开发板连接成功：'+json.dumps(value,ensure_ascii=False)})
        self.background(work)

    def refresh_scans(self):
        selected = self.selected_scan
        for item in self.scans.get_children():
            self.scans.delete(item)
        for row in self.store.scans():
            if self.search.get().lower() in row['case_id'].lower():
                self.scans.insert('', 'end',iid=row['scan_id'],values=(row['case_id'],row['created'][:16].replace('T',' ')))
        if selected and self.scans.exists(selected):
            self.scans.selection_set(selected)

    def select_scan(self,event=None):
        selection = self.scans.selection()
        if not selection:
            return
        if self.selected_scan != selection[0]:
            self.viewer,self.loaded_seg = None,None
        self.selected_scan = selection[0]
        self.refresh_result()

    def refresh_result(self):
        if not self.selected_scan:
            return
        scan = self.store.scan(self.selected_scan)
        tasks = self.store.tasks(self.selected_scan)
        self.summary.set('病例 '+scan['case_id']+' · '+('尚未分析' if not tasks else '最新分析任务'))
        self.history.delete('1.0','end')
        self.history.insert('end',json.dumps({'scan':scan,'tasks':tasks},ensure_ascii=False,indent=2))
        lines = ['扫描：'+self.selected_scan, '原生 MRI：'+('已导入' if scan['metadata']['has_native'] else '未导入；分割不可用')]
        self.progress['value'] = 0
        if tasks:
            task = tasks[0]
            classification,seg = task['classification'],task['segmentation']
            lines.extend(['','分类状态：'+classification['status'],'执行入口：'+task['backend']])
            if 'error' in classification:
                lines.append('分类错误：'+str(classification['error']))
            result = classification.get('result')
            if result:
                self.summary.set('病例 '+scan['case_id']+' · '+CLASS_NAMES.get(result.get('class_id'),'二级未完成'))
                lines += ['执行后端：'+str(result.get('execution_backend')),
                          '一级提示分：'+f"{result['score']:.2f} / 100",
                          'A / B / C 分数：'+' / '.join(f'{p:.6f}' for p in result['probabilities_abc']),
                          '二级状态：'+result.get('severity_status','未完成')]
                if result.get('severity_probability') is not None:
                    lines.append('二级轻度及以上分数：'+f"{result['severity_probability']:.6f}")
                if result.get('severity_status') == 'incomplete':
                    lines.append('一级已完成，二级未完成：'+str(result.get('severity_error','未知原因')))
                self.progress['value'] = 100
            else:
                self.progress['value'] = classification.get('progress',{}).get('percent',0)
            lines += ['','脑区分割：'+seg['status']]
            if seg.get('source') == 'cache':
                lines.append('分割来源：同一扫描及模型版本的本地缓存')
            if seg.get('error'):
                lines.append('分割错误：'+str(seg['error']))
            measurement = seg.get('measurement')
            if measurement:
                volumes = measurement['volumes_mm3']
                lines += [f'左 / 右海马体积：{volumes[0]:.1f} / {volumes[1]:.1f} mm³',
                          '左 / 右海马占脑实质：'+' / '.join(f'{v:.3f}%' for v in measurement['hippocampus_percent_parenchyma']),
                          '比例分母为分割脑实质，非颅内容积（ICV）。']
            if seg.get('measurement_error'):
                lines.append('体积量测未完成：'+seg['measurement_error'])
            if seg['status'] == 'complete' and seg['labels'] != self.loaded_seg:
                try:
                    self.viewer = SliceViewer(seg['image'],seg['labels'])
                    self.loaded_seg = seg['labels']
                    self.change_axis()
                except Exception as error:
                    lines.append('分割显示错误：'+str(error))
        self.result_text.delete('1.0','end')
        self.result_text.insert('end','\n'.join(lines))
        self.draw_slice()

    def change_axis(self):
        if self.viewer:
            axis = ['矢状位','冠状位','轴位'].index(self.axis.get())
            length = self.viewer.volume.shape[axis]
            self.slider.configure(to=length-1)
            self.slice_index.set(length//2)
            self.draw_slice()

    def draw_slice(self):
        self.canvas.delete('all')
        width,height = max(100,self.canvas.winfo_width()),max(100,self.canvas.winfo_height())
        if not self.viewer:
            self.canvas.create_text(width//2,height//2,text='分割完成后显示个体空间彩色叠加\n需另行导入原生 MRI',fill='#b6c5d9',font=('Microsoft YaHei UI',12),justify='center')
            return
        axis = ['矢状位','冠状位','轴位'].index(self.axis.get())
        index = min(self.viewer.volume.shape[axis]-1,max(0,int(round(self.slice_index.get()))))
        self.slice_label.configure(text=str(index))
        self.photo = ImageTk.PhotoImage(self.viewer.render(axis,index,(width,height)))
        self.canvas.create_image(0,0,anchor='nw',image=self.photo)

    def import_dialog(self):
        dialog = tk.Toplevel(self.root)
        dialog.title('导入 OASIS-1 扫描')
        dialog.geometry('760x360')
        frame = ttk.Frame(dialog,padding=16)
        frame.pack(fill='both',expand=True)
        fields = {}
        for row,(key,label) in enumerate([('case','病例编号'),('image','T88 影像'),('mask','脑掩膜 / FSL_SEG'),('native','原生 MRI（可选）')]):
            fields[key] = tk.StringVar()
            ttk.Label(frame,text=label).grid(row=row,column=0,sticky='w',pady=8)
            ttk.Entry(frame,textvariable=fields[key],width=58).grid(row=row,column=1,padx=8)
            if key != 'case':
                ttk.Button(frame,text='选择',command=lambda k=key:fields[k].set(filedialog.askopenfilename(parent=dialog,title=k,filetypes=[('MRI','*.hdr *.nii *.nii.gz'),('All','*.*')]) or fields[k].get())).grid(row=row,column=2)
        confirm = tk.BooleanVar(value=False)
        ttk.Checkbutton(frame,text='确认全部输入属于同一扫描；T88 网格和强度未重定向、重采样或归一化。',variable=confirm).grid(row=4,column=0,columnspan=3,sticky='w',pady=10)
        ttk.Label(frame,text='T88：176×208×176，1 mm。分割另选原生 NIfTI 或官方 SUBJ_111 中的 .hdr。\n不依据 Analyze 回退仿射标注左右；SUBJ_111 使用已验证的专用转换。',wraplength=700,style='Hint.TLabel').grid(row=5,column=0,columnspan=3,sticky='w')
        def submit():
            values = {key:value.get() for key,value in fields.items()}
            confirmed = confirm.get()
            if not confirmed:
                messagebox.showerror('输入契约','请确认冻结 T88 磁盘网格。',parent=dialog)
                return
            dialog.destroy()
            def work():
                scan_id = self.store.import_scan(values['case'],values['image'],values['mask'],values['native'] or None,confirmed_grid=confirmed)
                self.events.put({'component':'import','status':'complete','scan_id':scan_id})
            self.background(work)
        ttk.Button(frame,text='验证并保存本地副本',command=submit).grid(row=6,column=0,columnspan=3,sticky='e',pady=12)

    def analyze(self):
        if not self.selected_scan or self.busy:
            return
        scan_id,address,device = self.selected_scan,self.address.get(),self.device.get()
        reference = self.mode.get() == '本机软件参考（调试）'
        self.busy = True
        self.run_button.configure(state='disabled')
        def work():
            try:
                board = None if reference else BoardClient(address)
                if board is not None:
                    health = board.health()
                    if health.get('backend') != 'pl':
                        raise ValueError('当前开发板服务后端为 '+str(health.get('backend'))+'，不是所选 PS + PL。请启动 PL 服务，或显式选择本机软件参考。')
                self.workflow.run(scan_id,board,software_reference=reference,device=device)
            finally:
                self.events.put({'component':'work','status':'finished'})
        self.background(work)

    def resume(self):
        if not self.selected_scan:
            return
        tasks = self.store.tasks(self.selected_scan)
        if not tasks or tasks[0]['backend'] == 'software_reference':
            return
        task = tasks[0]
        self.background(lambda:self.workflow.poll(task['task_id'],BoardClient(task['backend'])))

    def export_report(self):
        if not self.selected_scan:
            return
        from host.paths import exports_folder
        path = filedialog.asksaveasfilename(title='保存新的报告文件',initialdir=exports_folder(),defaultextension='.json',filetypes=[('JSON','*.json')])
        if path:
            try:
                # Existing reports remain immutable; a new name is required.
                with Path(path).open('x',encoding='utf-8') as output:
                    json.dump({'scan':self.store.scan(self.selected_scan),'tasks':self.store.tasks(self.selected_scan)},output,ensure_ascii=False,indent=2)
            except Exception as error:
                messagebox.showerror('报告导出',str(error))

    def consume_events(self):
        changed = False
        while True:
            try:
                event = self.events.get_nowait()
            except Empty:
                break
            changed = True
            if event['component'] == 'import':
                self.selected_scan = event['scan_id']
                self.refresh_scans()
            elif event['component'] == 'work':
                self.busy = False
                self.run_button.configure(state='normal')
            self.status.set(event.get('error',event.get('message',event['component']+' · '+event['status'])))
        if changed:
            self.refresh_result()
        self.root.after(200,self.consume_events)
