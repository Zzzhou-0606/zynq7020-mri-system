"""HTTP v1 client; hardware failures remain failures, never trigger CPU inference."""
import json
import http.client
import re
import ssl
import time
from urllib.parse import urlsplit


class BoardClient:
    def __init__(self, address, timeout=30, doctor_token=None):
        address = address.strip()
        if '://' not in address:
            address = 'http://' + address
        parts = urlsplit(address)
        if (parts.scheme not in ('http', 'https') or not parts.hostname or parts.username
                or parts.path not in ('', '/') or parts.query or parts.fragment
                or any(c.isspace() for c in address) or parts.port == 0):
            raise ValueError('Enter board IP/host and optional port, without a path or credentials')
        # The board service listens on 8080; HTTPConnection otherwise uses 80.
        # Explicit ports and HTTPS proxy addresses retain their usual meaning.
        if parts.scheme == 'http' and parts.port is None:
            parts = parts._replace(netloc=parts.netloc + ':8080')
        self.base = parts.geturl().rstrip('/')
        self.timeout = timeout
        self.parts = parts
        from host.client.credentials import get_token, validate_token
        self._doctor_token = (get_token(self.base) if doctor_token is None else
                              validate_token(doctor_token) if doctor_token else None)

    def request(self, method, path, payload=None, content_type='application/json'):
        if payload is not None and not isinstance(payload, bytes):
            payload = json.dumps(payload, ensure_ascii=False, allow_nan=False).encode('utf-8')
        if self.parts.scheme == 'https':
            context = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
            context.load_default_certs()
            connection = http.client.HTTPSConnection(self.parts.hostname,self.parts.port,timeout=self.timeout,context=context)
        else:
            connection = http.client.HTTPConnection(self.parts.hostname,self.parts.port,timeout=self.timeout)
        try:
            headers = {'Content-Type': content_type}
            if self._doctor_token:
                headers['Authorization'] = 'Bearer ' + self._doctor_token
            connection.request(method,path,body=payload,headers=headers)
            response = connection.getresponse()
            data = response.read(4 * 1024 * 1024+1)
            if len(data) > 4*1024*1024:
                raise ValueError('Board response exceeds JSON limit')
            if response.status >= 400:
                if response.status == 401:
                    raise RuntimeError('开发板需要医生配对，或配对密钥已失效。请在设置中输入板端生成的六位临时配对码后重新连接。')
                if '/patient-' in path:
                    # A publish response may contain a one-time patient code. Never
                    # forward raw bodies into workflow logs, notifications or SQLite.
                    raise RuntimeError(f'患者发布请求失败（HTTP {response.status}），请检查任务状态、权限和板端存储空间。')
                raise RuntimeError(f'Board HTTP {response.status}: '+data[:8192].decode('utf-8',errors='replace'))
            return json.loads(data) if data else {}
        except ConnectionRefusedError as error:
            raise ConnectionRefusedError(
                f'连接被拒绝：{self.base}。请核对开发板 IP 和端口，并在板端运行 '
                '/etc/init.d/mri status；若服务未启动，请检查 /mnt/mri-data 挂载及 '
                '/var/log/mri/service.log。Qt 界面启动不代表 MRI 服务已启动。'
            ) from error
        finally:
            connection.close()

    def health(self):
        return self.request('GET', '/v1/health')

    def sync_time(self):
        result = self.request('POST', '/v1/time', {'unix_time': time.time()})
        if result.get('synced') is not True:
            raise RuntimeError('开发板未确认时间同步成功')
        return result

    def create(self, metadata):
        return self.request('POST', '/v1/tasks', metadata)

    def delete_scan(self, scan_id, case_id):
        if (not isinstance(scan_id, str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_.-]{0,79}', scan_id)
                or not isinstance(case_id, str) or not 1 <= len(case_id) <= 80
                or not case_id.isprintable() or not case_id.strip()):
            raise ValueError('删除请求需要有效的扫描ID和病例ID')
        result = self.request('DELETE', '/v1/scans/' + scan_id, {'case_id': case_id})
        if (not isinstance(result, dict) or result.get('deleted') is not True
                or result.get('scan_id') != scan_id or result.get('case_id') != case_id
                or type(result.get('case_empty')) is not bool):
            raise RuntimeError('开发板未确认对应扫描删除成功；本地记录和病例编号必须保留')
        return result

    def upload(self, task_id, data):
        return self.request('PUT', f'/v1/tasks/{task_id}/input', data, 'application/octet-stream')

    def start(self, task_id):
        return self.request('POST', f'/v1/tasks/{task_id}/start', {})

    def status(self, task_id):
        data = self.request('GET', f'/v1/tasks/{task_id}')
        if data.get('task_id') != task_id:
            raise ValueError('Board status belongs to a different task')
        return data

    def result(self, task_id):
        data = self.request('GET', f'/v1/tasks/{task_id}/result')
        result = data.get('result', data)
        if result.get('task_id',data.get('task_id')) != task_id:
            raise ValueError('Board result belongs to a different task')
        from shared.protocol.mri_v1 import validate_result
        validate_result(result)
        return result

    def segmentation(self, task_id, payload):
        return self.request('PUT', f'/v1/tasks/{task_id}/segmentation', payload)

    def preview(self, task_id, index, png_bytes):
        return self.request('PUT', f'/v1/tasks/{task_id}/preview/{index}', png_bytes, 'image/png')
