"""Per-library connection preferences, independent of the browser cache."""
import json
from pathlib import Path
from threading import RLock
from urllib.parse import urlsplit

from host.client.board import BoardClient
from host.paths import settings_file

DEFAULT_ADDRESS = 'http://192.168.1.10:8080'


def normalize_address(address):
    if not isinstance(address, str) or not address.strip():
        raise ValueError('请输入开发板 IP 或主机名。')
    value = address.strip()
    parts = urlsplit(value if '://' in value else 'http://' + value)
    if (parts.query or parts.fragment or parts.password or
            any(c.isspace() for c in value) or parts.port == 0):
        raise ValueError('地址应为 IP / 主机名和端口，例如 192.168.1.10:8080。')
    return BoardClient(value).base


class Settings:
    def __init__(self, root):
        self.path = settings_file(root)
        self._lock = RLock()
        self.warning = ''
        self._data = dict(address=DEFAULT_ADDRESS, recent_addresses=[], mode='pl', device='cpu')
        if self.path.exists():
            try:
                saved = json.loads(self.path.read_text(encoding='utf-8'))
                self._data['address'] = normalize_address(saved['address'])
                recent = saved.get('recent_addresses', [])
                if not isinstance(recent, list):
                    raise ValueError('recent_addresses must be a list')
                self._data['recent_addresses'] = list(dict.fromkeys(
                    normalize_address(item) for item in recent))[:5]
                self._data['mode'] = saved.get('mode') if saved.get('mode') in ('pl','software_reference') else 'pl'
                self._data['device'] = saved.get('device') if saved.get('device') in ('cpu','cuda') else 'cpu'
            except (OSError, ValueError, KeyError, TypeError):
                self._data = dict(address=DEFAULT_ADDRESS, recent_addresses=[], mode='pl', device='cpu')
                self.warning = '地址配置读取失败，已使用默认地址；原文件保留到下次保存。'

    def snapshot(self):
        with self._lock:
            return dict(address=self._data['address'],
                        mode=self._data['mode'],device=self._data['device'],
                        recent_addresses=list(self._data['recent_addresses']))

    def save(self, address, *, successful=False, mode=None, device=None):
        address = normalize_address(address)
        if mode is not None and mode not in ('pl','software_reference') or device is not None and device not in ('cpu','cuda'):
            raise ValueError('无效的运行模式或分割设备。')
        with self._lock:
            data = self.snapshot()
            data['address'] = address
            if mode is not None: data['mode'] = mode
            if device is not None: data['device'] = device
            if successful:
                data['recent_addresses'] = [address] + [
                    item for item in data['recent_addresses'] if item != address][:4]
            self.path.parent.mkdir(parents=True, exist_ok=True)
            temporary = self.path.with_suffix('.json.tmp')
            temporary.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
            temporary.replace(self.path)
            self._data = data
            return self.snapshot()
