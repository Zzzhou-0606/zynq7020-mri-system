"""Navigator RTC and completion buzzer helpers; never access hardware on import."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import threading
import time


class BoardPeripherals:
    def __init__(self, sys_root='/sys', dev_root='/dev', state_dir='/run/mri-peripherals',
                 runner=subprocess.run, sleeper=time.sleep, rtc_status='/run/mri-rtc.json'):
        self.sys_root, self.dev_root = Path(sys_root), Path(dev_root)
        self.state_dir = Path(state_dir)
        self.runner, self.sleeper = runner, sleeper
        self.rtc_status = Path(rtc_status)
        self._lock = threading.Lock()

    def _rtc(self, write):
        key = 'updated' if write else 'restored'
        status = {'available': False, key: False}
        try:
            devices = [p for p in (self.sys_root / 'class/rtc').glob('rtc*')
                       if 'pcf8563' in (p / 'name').read_text().lower()]
            if len(devices) != 1:
                raise OSError('Expected one PCF8563 RTC device')
            device = self.dev_root / devices[0].name
            if not device.exists():
                raise OSError('RTC device node is unavailable')
            status['available'] = True
            # Explicit UTC on both directions; never write the RTC at boot.
            result = self.runner(['hwclock', '-f', str(device), '-u', '-w' if write else '-s'],
                                 capture_output=True, text=True, timeout=5, check=False)
            if result.returncode:
                raise OSError((result.stderr or result.stdout or 'hwclock failed').strip()[:240])
            status[key] = True
        except (OSError, subprocess.SubprocessError) as exc:
            status['error'] = str(exc)
        try:
            self.rtc_status.parent.mkdir(parents=True, exist_ok=True)
            temporary = self.rtc_status.with_suffix('.tmp')
            with self._lock:
                temporary.write_text(json.dumps(dict(status, operation='save' if write else 'restore',
                                                    sampled_at=time.time())), encoding='utf-8')
                os.replace(str(temporary), str(self.rtc_status))
        except OSError as exc:
            status['warning'] = 'RTC status file: ' + str(exc)
        return status

    def restore_rtc(self):
        return self._rtc(False)

    def save_rtc(self):
        return self._rtc(True)

    def beep_once(self, task_id):
        """Queue at most one pulse per completion ID, without delaying inference.

        A receipt is claimed before starting the worker. Failed/uncertain events
        are not automatically replayed (avoids repeated sounds after restart).
        """
        status = {'available': False, 'queued': False, 'duplicate': False}
        if not isinstance(task_id, str) or not task_id or len(task_id) > 256:
            status['error'] = 'Invalid completion ID'
            return status
        led = self.sys_root / 'class/leds/mri-completion-beep'
        if not (led / 'brightness').exists():
            status['error'] = 'Completion buzzer is unavailable'
            return status
        status['available'] = True
        try:
            self.state_dir.mkdir(parents=True, exist_ok=True)
            receipt = self.state_dir / (hashlib.sha256(task_id.encode()).hexdigest() + '.json')
            with receipt.open('x') as f:
                json.dump({'status': 'queued'}, f)
        except FileExistsError:
            status['duplicate'] = True
            return status
        except OSError as exc:
            status['error'] = str(exc)
            return status
        threading.Thread(target=self._pulse, args=(led, receipt), daemon=True,
                         name='mri-completion-beep').start()
        status['queued'] = True
        return status

    def _pulse(self, led, receipt):
        result = {'status': 'failed'}
        with self._lock:
            try:
                # Kernel oneshot owns the switch-off timer even if this process dies.
                (led / 'trigger').write_text('oneshot\n')
                (led / 'delay_on').write_text('150\n')
                (led / 'delay_off').write_text('1\n')
                (led / 'invert').write_text('0\n')
                (led / 'shot').write_text('1\n')
                self.sleeper(0.18)
                result['status'] = 'completed'
            except OSError as exc:
                result['error'] = str(exc)
            finally:
                try:
                    (led / 'brightness').write_text('0\n')
                except OSError as exc:
                    result = {'status': 'failed', 'error': str(exc)}
            temporary = receipt.with_suffix('.tmp')
            try:
                temporary.write_text(json.dumps(result), encoding='utf-8')
                os.replace(str(temporary), str(receipt))
            except OSError:
                pass  # Existing queued receipt preserves at-most-once semantics.


_board = BoardPeripherals()
restore_rtc = _board.restore_rtc
save_rtc = _board.save_rtc
beep_once = _board.beep_once

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=['restore-rtc', 'save-rtc'])
    args = parser.parse_args()
    result = restore_rtc() if args.command == 'restore-rtc' else save_rtc()
    print(json.dumps(result, ensure_ascii=False))
    raise SystemExit(0 if result.get('restored', result.get('updated')) else 1)
