import importlib.util
from pathlib import Path
import tempfile
import threading
import time
import unittest

source=Path(__file__).resolve().parents[1]/'examples/qt_demo/backend.py'
spec=importlib.util.spec_from_file_location('qt_backend',source)
backend=importlib.util.module_from_spec(spec)
spec.loader.exec_module(backend)


class QtBackendTests(unittest.TestCase):
    def manager(self, runner):
        # Preserve per-run evidence for inspection.
        return backend.Tasks(runner, tempfile.mkdtemp(prefix='pynq-qt-test-', dir=str(Path.cwd())))

    def complete(self, tasks):
        deadline=time.monotonic()+3
        while tasks.snapshot()['state']=='running' and time.monotonic()<deadline:
            time.sleep(0.01)
        self.assertNotEqual(tasks.snapshot()['state'],'running')
        return tasks.snapshot()

    def test_duplicate_rejected_and_result_retained_for_reconnect(self):
        released=threading.Event()
        calls=[]
        def run(path,x,expected):
            calls.append(path)
            released.wait(2)
            return expected.copy(), {'status':'pass','transfer_wall_ms':0.1,
                'received_bytes':x.nbytes,'comparison':{'equal':True}}
        tasks=self.manager(run)
        accepted=tasks.submit({'path':'affine','n':16})
        try:
            self.assertIn('accepted',accepted)
            self.assertEqual(tasks.submit({'path':'fifo','n':1})['error'],'running')
        finally:
            released.set()
        result=self.complete(tasks)
        self.assertEqual(result['status'],'pass')
        self.assertEqual(result['task_id'],accepted['accepted'])
        self.assertEqual(tasks.snapshot(),result)
        self.assertEqual(calls,['affine'])

    def test_invalid_requests_never_reach_hardware(self):
        def run(*args): raise AssertionError('Unexpected hardware call')
        tasks=self.manager(run)
        for n in (0,4096,True,1.5,'16',None):
            self.assertIn('error',tasks.submit({'path':'fifo','n':n}))
        self.assertIn('error',tasks.submit({'path':'missing','n':16}))
        self.assertEqual(tasks.snapshot()['state'],'ready')

    def test_fault_is_retained_and_blocks_submissions(self):
        def run(*args): raise RuntimeError('injected failure')
        tasks=self.manager(run)
        tasks.submit({'path':'fifo','n':1})
        result=self.complete(tasks)
        self.assertEqual(result['state'],'fault')
        self.assertIn('injected failure',result['error'])
        self.assertEqual(tasks.submit({'path':'fifo','n':1})['error'],'fault')
