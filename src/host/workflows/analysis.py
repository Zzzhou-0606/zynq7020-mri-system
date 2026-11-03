"""Independent classification and segmentation jobs with durable local history."""
from concurrent.futures import ThreadPoolExecutor
import json
import os
from pathlib import Path
import subprocess
import sys
import threading
import time
import numpy as np
from host.input.prepare_case import prepare_volume
from host.segmentation.fastsurfer_runner import command, VENDOR
from host.segmentation.quality import validate_outputs
from host.visualization.slices import SliceViewer, raw_previews
from host.workflows.cancellation import StopRequested
from host.paths import segmentation_weights

PROJECT = Path(__file__).resolve().parents[2]
SEG_VERSION = 'FastSurfer-2.4.2-VINN-2.0.0-1mm'


def file_identity(path):
    path = Path(path)
    stat = path.stat()
    return dict(size=stat.st_size, mtime_ns=stat.st_mtime_ns)


def segmentation_model_identity():
    return {plane:file_identity(segmentation_weights()/f'aparc_vinn_{plane}_v2.0.0.pkl')
            for plane in ('axial','coronal','sagittal')}


class AnalysisWorkflow:
    def __init__(self, store, notify=lambda event: None, stop_event=None):
        self.store, self.notify = store, notify
        self.stop_event = stop_event if stop_event is not None else threading.Event()

    def check_stop(self):
        if self.stop_event.is_set():
            raise StopRequested('已停止本机分割。')

    def _run_segmentation(self, args, log):
        self.check_stop()
        # Own only this subprocess. Never terminate unrelated Python sessions.
        with subprocess.Popen(args, cwd=VENDOR, stdout=log, stderr=subprocess.STDOUT,
                              creationflags=subprocess.CREATE_NO_WINDOW if os.name == 'nt' else 0) as process:
            while process.poll() is None:
                if self.stop_event.wait(.2):
                    if os.name == 'nt':
                        # venv python.exe is a launcher on Windows; killing
                        # only it would leave the actual inference child alive.
                        stopped = subprocess.run(
                            ['taskkill', '/PID', str(process.pid), '/T', '/F'],
                            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
                            creationflags=subprocess.CREATE_NO_WINDOW, timeout=10)
                        if stopped.returncode and process.poll() is None:
                            raise RuntimeError('无法确认分割进程已停止，请检查任务进程。')
                    else:
                        process.terminate()
                    try:
                        process.wait(timeout=5)
                    except subprocess.TimeoutExpired:
                        process.kill()
                        process.wait()
                    self.check_stop()
            self.check_stop()
            if process.returncode:
                raise subprocess.CalledProcessError(process.returncode, args)

    def update(self, task_id, component, value):
        self.store.update(task_id, component, value)
        self.notify(dict(task_id=task_id, component=component, **value))

    def run(self, scan_id, board=None, *, software_reference=False, device='cpu'):
        self.check_stop()
        if software_reference == (board is not None):
            raise ValueError('Choose exactly one explicit inference backend')
        from shared.protocol.mri_v1 import MODEL_VERSION
        task_id = self.store.new_task(scan_id, 'software_reference' if software_reference else board.base)
        self.notify(dict(task_id=task_id, component='task', status='created'))
        scan = self.store.scan(scan_id)
        if board is not None:
            try:
                board.create(dict(task_id=task_id, case_id=scan['case_id'],scan_id=scan_id,model_version=MODEL_VERSION))
            except Exception as error:
                self.update(task_id,'classification',dict(status='failed',error=str(error)))
                # Segmentation can still finish and remain available locally.
                board = None
                remote_failed = True
            else:
                remote_failed = False
        else:
            remote_failed = False
        with ThreadPoolExecutor(max_workers=2) as jobs:
            futures = []
            started = threading.Event()
            if not remote_failed:
                futures.append(jobs.submit(self.classify, scan_id, task_id, board,
                                           software_reference, started))
            if board is not None:
                # Start the critical board job first. Raw previews still finish
                # before segmentation can publish newer anatomical overlays.
                started.wait()
                try:
                    volume, mask = self.store.input(scan_id)
                    for index, png in enumerate(raw_previews(volume, mask)):
                        board.preview(task_id, index, png)
                except Exception as error:
                    self.notify(dict(task_id=task_id, component='notification', status='warning',
                                     error='Raw preview upload: '+str(error)))
            futures.append(jobs.submit(self.segment, scan_id, task_id, board, device))
            for future in futures:
                future.result()
        return task_id

    def classify(self, scan_id, task_id, board, software_reference, started=None):
        try:
            self.update(task_id,'classification',dict(status='running',stage='Preparing frozen inputs'))
            volume, mask = self.store.input(scan_id)
            if software_reference:
                from training.reference.frozen_hierarchy import FrozenHierarchy
                import torch
                torch.set_num_threads(min(4,torch.get_num_threads()))
                result = FrozenHierarchy('cpu').predict_volume(volume, mask)
                from shared.protocol.mri_v1 import validate_result, MODEL_VERSION
                result['model_version'] = MODEL_VERSION
                validate_result(result,backend='software_reference')
            else:
                from shared.protocol.mri_v1 import write_input
                path = self.store.folder(scan_id) / (task_id+'.input.bin')
                write_input(path, prepare_volume(volume, mask))
                board.upload(task_id,path.read_bytes())
                board.start(task_id)
                if started is not None:
                    started.set()
                return self.poll(task_id, board)
            self.update(task_id,'classification',dict(status='complete',result=result))
        except Exception as error:
            self.update(task_id,'classification',dict(status='failed',error=str(error)))
        finally:
            # Failed preparation/upload must also release independent segmentation.
            if started is not None:
                started.set()

    def poll(self, task_id, board, timeout=24*3600):
        deadline = time.monotonic()+timeout
        try:
            while time.monotonic() < deadline:
                status = board.status(task_id)
                component = status.get('classification', {})
                state = component.get('status', status.get('status'))
                if state == 'complete':
                    result = board.result(task_id)
                    self.update(task_id,'classification',dict(status='complete', result=result))
                    return
                if state == 'failed' or status.get('status') == 'failed':
                    self.update(task_id,'classification',dict(status='failed',error=component.get('error',status.get('error','Board inference failed')),resumable=False))
                    return
                self.update(task_id,'classification',dict(status='running',progress=status.get('progress',{})))
                time.sleep(1)
            raise TimeoutError('Polling limit reached; board task may still be running; reconnect to retrieve it')
        except Exception as error:
            self.update(task_id,'classification',dict(status='connection_lost',error=str(error), resumable=True))

    def segment(self, scan_id, task_id, board, device):
        def update(value):
            self.update(task_id,'segmentation',value)
            if board is not None:
                try:
                    board.segmentation(task_id,{k:v for k,v in value.items() if k not in ('measurement','geometry')})
                except Exception as error:
                    self.notify(dict(task_id=task_id,component='notification',status='warning',error='Board segmentation update: '+str(error)))
        try:
            folder = self.store.folder(scan_id)
            self.check_stop()
            native = folder/'native.nii.gz'
            if not native.exists():
                update(dict(status='failed',error='No native MRI supplied; anatomical segmentation requires separate native NIfTI'))
                return
            update(dict(status='running',stage='Brain region segmentation'))
            identity = file_identity(native)
            model_identity = segmentation_model_identity()
            cache = None
            for manifest in sorted(folder.glob('segmentation-*/cache.json'),reverse=True):
                candidate = json.loads(manifest.read_text(encoding='utf-8'))
                if (candidate.get('scan_id') == scan_id and candidate.get('native') == identity
                        and candidate.get('version') == SEG_VERSION and candidate.get('model_identity') == model_identity):
                    base = manifest.parent
                    if all((base/candidate[key]).is_file() and file_identity(base/candidate[key]) == candidate[key+'_identity']
                           for key in ('image','labels')):
                        cache = candidate
                        break
            if cache is None:
                base = folder / ('segmentation-'+task_id)
                base.mkdir(exist_ok=False)
                args = command(native,base,'scan',sys.executable,device,device)
                with (base/'fastsurfer.log').open('w',encoding='utf-8') as log:
                    self._run_segmentation(args, log)
                self.check_stop()
                image,labels = base/'scan/mri/orig.mgz',base/'scan/mri/aparc.DKTatlas+aseg.deep.mgz'
                geometry = validate_outputs(labels,image)
                cache = dict(scan_id=scan_id,native=identity,version=SEG_VERSION,model_identity=model_identity,
                             image=image.relative_to(base).as_posix(),labels=labels.relative_to(base).as_posix(),
                             image_identity=file_identity(image),labels_identity=file_identity(labels),geometry=geometry)
                (base/'cache.json').write_text(json.dumps(cache,indent=2),encoding='utf-8')
                source = 'new_segmentation'
            else:
                source = 'cache'
            image,labels = base/cache['image'],base/cache['labels']
            self.check_stop()
            geometry = validate_outputs(labels,image)
            viewer = SliceViewer(image,labels)
            measurement = None
            measurement_error = None
            try:
                from host.measurements.volumes import measure
                config = json.loads((PROJECT/'shared/schemas/anatomy_labels.json').read_text(encoding='utf-8'))
                _,measurement = measure(viewer.labels,viewer.seg.affine,config['representation'],config['quality_control'])
                values = measurement['volumes_mm3']
                measurement['hippocampus_percent_parenchyma'] = [100*values[0]/values[7],100*values[1]/values[7]]
                measurement['ratio_denominator'] = 'segmented_brain_parenchyma_not_ICV'
            except Exception as error:
                measurement_error = str(error)
            previews = viewer.key_previews()
            for index, png in enumerate(previews):
                self.check_stop()
                destination = base/f'preview{index}.png'
                if not destination.exists():
                    destination.write_bytes(png)
                if board is not None:
                    try:
                        board.preview(task_id,index,png)
                    except Exception as error:
                        self.notify(dict(task_id=task_id,component='notification',status='warning',error='Preview upload: '+str(error)))
            update(dict(status='complete',image=str(image),labels=str(labels),version=SEG_VERSION,source=source,
                        geometry=geometry,measurement=measurement,measurement_error=measurement_error))
        except StopRequested:
            update(dict(status='failed',cancelled=True,error='已停止本机分割，可重新分析。'))
        except Exception as error:
            update(dict(status='failed',error=str(error)))
