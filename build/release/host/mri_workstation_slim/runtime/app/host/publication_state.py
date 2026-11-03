"""Local patient credentials for the workstation card, encrypted with Windows DPAPI."""
import json
import os
from pathlib import Path
import threading
import uuid

from host.client.credentials import _crypt


class PublicationState:
    def __init__(self, root):
        self.path = Path(root) / 'patient-access.local.bin'
        self._lock = threading.RLock()
        self._records = {}
        self.warning = ''
        self._read_failed = False
        if self.path.exists():
            try:
                self._records = json.loads(_crypt(self.path.read_bytes(), decrypt=True))
                if not isinstance(self._records, dict):
                    raise ValueError()
            except Exception:
                self._records = {}
                self._read_failed = True
                self.warning = '本机访问码文件无法解密，原文件已保留。重新发布的访问码本次可见，重启后需再次生成。'

    def get(self, scan_id, task_id):
        with self._lock:
            value = dict(self._records.get(task_id, {}))
            if value.get('scan_id') != scan_id:
                return {'status':'unknown', 'warning':self.warning}
            return dict(value, warning=self.warning)

    def save(self, context, result=None):
        with self._lock:
            self._records[context['task_id']] = dict(context, status='published' if result else 'revoked')
            if result:
                self._records[context['task_id']].update(result)
                # The board rotates one code per case. Keep every published task
                # of that case on that exact board on the same newest credential.
                for record in self._records.values():
                    if (record.get('status') == 'published' and record.get('address') == context['address']
                            and record.get('case_id') == context['case_id']):
                        record.update(access_code=result.get('access_code'), patient_url=result.get('patient_url'), uncertain=False)
            self._persist()

    def uncertain(self, context, case_wide=False):
        with self._lock:
            for record in self._records.values():
                same_case = record.get("address") == context["address"] and record.get("case_id") == context["case_id"]
                if record.get("task_id") == context["task_id"] or (case_wide and same_case):
                    if record.get("status") == "published":
                        record["uncertain"] = True
            self._persist()

    def _persist(self):
        if self._read_failed:
            return
        if os.name != 'nt':
            self.warning = '当前系统仅在本次运行保留访问码；Windows 支持加密保存。'
            return
        try:
            protected = _crypt(json.dumps(self._records, ensure_ascii=False).encode('utf-8'))
            temporary = self.path.with_name(self.path.name+'.'+uuid.uuid4().hex+'.tmp')
            with temporary.open('xb') as stream:
                stream.write(protected)
                stream.flush()
                os.fsync(stream.fileno())
            os.replace(temporary, self.path)
            self.warning = ''
        except Exception:
            # The board has already published/revoked. Preserve that outcome
            # and show the current credential even if local storage failed.
            self.warning = '访问状态已更新，但本机加密保存失败。请现在复制，重启后需重新生成访问码。'
