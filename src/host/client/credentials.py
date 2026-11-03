"""Local doctor credentials, scoped to the exact board origin, never patient codes."""
import base64
import ctypes
from ctypes import wintypes
import json
import os
from pathlib import Path
import re
import threading
import uuid

from host.paths import doctor_credentials
DEFAULT_PATH = doctor_credentials()
LOCK = threading.RLock()
TOKEN = re.compile(r'[A-Za-z0-9_-]{32,256}\Z')


def validate_token(token):
    if not isinstance(token, str) or not TOKEN.fullmatch(token.strip()):
        raise ValueError('医生配对密钥格式不正确，请复制板端 doctor.key 中的完整内容。')
    return token.strip()


def _crypt(data, decrypt=False):
    # DPAPI binds the saved key to the current Windows account; no new dependency.
    class Blob(ctypes.Structure):
        _fields_ = [('size', wintypes.DWORD), ('data', ctypes.POINTER(ctypes.c_ubyte))]
    buffer = ctypes.create_string_buffer(data)
    source = Blob(len(data), ctypes.cast(buffer, ctypes.POINTER(ctypes.c_ubyte)))
    target = Blob()
    crypt = ctypes.WinDLL('crypt32', use_last_error=True)
    kernel = ctypes.WinDLL('kernel32', use_last_error=True)
    function = crypt.CryptUnprotectData if decrypt else crypt.CryptProtectData
    function.argtypes = [ctypes.POINTER(Blob), ctypes.c_void_p, ctypes.c_void_p,
                         ctypes.c_void_p, ctypes.c_void_p, wintypes.DWORD, ctypes.POINTER(Blob)]
    function.restype = wintypes.BOOL
    kernel.LocalFree.argtypes = [ctypes.c_void_p]
    kernel.LocalFree.restype = ctypes.c_void_p
    if not function(ctypes.byref(source), None, None, None, None, 1, ctypes.byref(target)):
        raise OSError('无法使用当前Windows账户读取或保存医生密钥，请重新配对。')
    try:
        return ctypes.string_at(target.data, target.size)
    finally:
        kernel.LocalFree(target.data)


def _read(path):
    if not path.exists():
        return {}
    try:
        value = json.loads(path.read_text(encoding='utf-8'))
        if not isinstance(value, dict):
            raise ValueError()
        return value
    except (OSError, ValueError):
        raise ValueError('本机开发板配对配置无法读取，请检查 board_credentials.json。') from None


def get_token(origin, path=None):
    with LOCK:
        entry = _read(Path(path or DEFAULT_PATH)).get(origin)
        if entry is None:
            return None
        try:
            data = base64.b64decode(entry['value'], validate=True)
            if entry['encoding'] == 'windows-dpapi':
                if os.name != 'nt':
                    raise ValueError()
                data = _crypt(data, decrypt=True)
            elif entry['encoding'] != 'posix-private':
                raise ValueError()
            return validate_token(data.decode('ascii'))
        except (KeyError, TypeError, ValueError, OSError):
            raise ValueError('已保存的医生密钥无法读取，请在此电脑重新配对开发板。') from None


def save_token(origin, token, path=None):
    token = validate_token(token)
    path = Path(path or DEFAULT_PATH)
    with LOCK:
        records = _read(path)
        data = token.encode('ascii')
        encoding = 'posix-private'
        if os.name == 'nt':
            data, encoding = _crypt(data), 'windows-dpapi'
        records[origin] = dict(encoding=encoding, value=base64.b64encode(data).decode('ascii'))
        path.parent.mkdir(parents=True, exist_ok=True)
        temporary = path.with_name(path.name + '.' + uuid.uuid4().hex + '.tmp')
        fd = os.open(str(temporary), os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
        with os.fdopen(fd, 'w', encoding='utf-8') as stream:
            json.dump(records, stream, ensure_ascii=False)
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(str(temporary), str(path))
