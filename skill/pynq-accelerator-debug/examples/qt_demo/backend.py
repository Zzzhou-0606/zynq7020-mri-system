"""Persistent local Qt backend: one hardware owner, one task at a time."""
import argparse
import json
import socketserver
import sys
import threading
import time
import uuid
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT/'scripts'))
sys.path.insert(0, str(ROOT/'examples/affine_u32'))
from pynq_debug import run_dma, save_report, TransferFailure, QUARANTINE
from reference import golden


class Tasks:
    def __init__(self, execute, reports):
        self.execute = execute
        self.reports = Path(reports)
        self.lock = threading.Lock()
        self.state = {'state': 'ready', 'backend': 'PL', 'task_id': None}

    def snapshot(self):
        with self.lock:
            return dict(self.state)

    def submit(self, request):
        path, n = request.get('path'), request.get('n')
        if path not in ('fifo', 'affine') or type(n) is not int or not 1 <= n <= 4095:
            return {'error': 'Choose fifo/affine and an integer length from 1 to 4095'}
        with self.lock:
            if self.state['state'] in ('running', 'fault'):
                return {'error': self.state['state'], 'task_id': self.state.get('task_id')}
            task = uuid.uuid4().hex[:12]
            self.state = {'state': 'running', 'backend': 'PL', 'task_id': task,
                          'path': path, 'n': n, 'started_at': time.time()}
        threading.Thread(target=self._work, args=(task, path, n), daemon=False).start()
        return {'accepted': task}

    def _work(self, task, path, n):
        started = time.perf_counter()
        try:
            # Repeat known wraparound boundaries, with an index-dependent offset.
            edges = np.array([0, 1, 0xffffffff, 0x80000000, 0x55555555], dtype=np.uint32)
            x = np.resize(edges, n) + np.arange(n, dtype=np.uint32)
            expected = x.copy() if path == 'fifo' else golden(x)
            actual, report = self.execute(path, x, expected)
            report.update(task_id=task, source='qt_demo', path=path)
            self.reports.mkdir(parents=True, exist_ok=True)
            report_file = Path(save_report(report, self.reports))
            np.savez_compressed(report_file.with_suffix('.npz'), input=x, expected=expected, actual=actual)
            result = {'state': 'complete', 'backend': 'PL', 'task_id': task, 'path': path,
                      'n': n, 'status': report['status'], 'transfer_wall_ms': report['transfer_wall_ms'],
                      'task_wall_ms': (time.perf_counter()-started)*1000,
                      'input_head': x[:8].tolist(), 'output_head': actual[:8].tolist(),
                      'expected_head': expected[:8].tolist(), 'report': str(report_file),
                      'received_bytes': report['received_bytes'], 'comparison': report['comparison']}
        except BaseException as exc:
            if isinstance(exc, TransferFailure):
                save_report(dict(exc.report, task_id=task, source='qt_demo'), self.reports)
            result = {'state': 'fault', 'backend': 'PL', 'task_id': task,
                      'error': type(exc).__name__+': '+str(exc), 'quarantined': bool(QUARANTINE)}
        with self.lock:
            self.state = result
        print(json.dumps(result), flush=True)


class Handler(socketserver.StreamRequestHandler):
    def handle(self):
        self.connection.settimeout(10)
        while True:
            raw = self.rfile.readline(4097)
            if not raw:
                return
            if len(raw) > 4096 or not raw.endswith(b'\n'):
                return
            try:
                request = json.loads(raw)
                if not isinstance(request, dict):
                    raise ValueError('Expected a JSON object')
                if request.get('op') == 'status':
                    result = self.server.tasks.snapshot()
                elif request.get('op') == 'run':
                    result = self.server.tasks.submit(request)
                elif request.get('op') == 'shutdown':
                    with self.server.tasks.lock:
                        if self.server.tasks.state['state'] == 'running' or QUARANTINE:
                            result = {'error': 'Hardware is still active or quarantined'}
                        else:
                            self.server.tasks.state['state'] = 'fault'
                            result = {'shutdown': True}
                            threading.Thread(target=self.server.shutdown, daemon=True).start()
                else:
                    result = {'error': 'Unknown operation'}
            except (ValueError, TypeError) as exc:
                result = {'error': str(exc)}
            self.wfile.write((json.dumps(result)+'\n').encode())
            self.wfile.flush()


def main():
    import fcntl
    parser = argparse.ArgumentParser()
    parser.add_argument('--bit', required=True)
    parser.add_argument('--port', type=int, default=8766)
    parser.add_argument('--reports', default=str(ROOT/'reports/qt_demo'))
    args = parser.parse_args()
    from pynq import Overlay, PL
    bit = Path(args.bit).resolve()
    if Path(PL.bitfile_name).resolve() != bit:
        raise RuntimeError('Load the matching complete display/compute overlay before starting the service')
    lock = open('/tmp/pynq-skill-qt-hardware.lock', 'a')
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    overlay = Overlay(str(bit), download=False)
    names = {'fifo': 'axi_dma_0', 'affine': 'axi_dma_affine'}
    for name in names.values():
        if ':axi_dma:' not in overlay.ip_dict[name]['type']:
            raise ValueError('Required DMA is missing')
        # PYNQ 2.7 binds UIO interrupt objects to the main thread's asyncio loop.
        # Construct drivers here; worker threads use the cached polling drivers.
        getattr(overlay, name)
    tasks = Tasks(lambda path, x, expected: run_dma(overlay, names[path], x, expected, timeout_s=3), args.reports)
    class Server(socketserver.ThreadingTCPServer):
        allow_reuse_address = True
        daemon_threads = True
    with Server(('127.0.0.1', args.port), Handler) as server:
        server.tasks = tasks
        print('READY '+str(bit), flush=True)
        # The service remains alive after a failed DMA, retaining quarantined buffers.
        server.serve_forever()


if __name__ == '__main__':
    main()
