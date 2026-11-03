"""Patient-scoped publication and sessions. Standard-library only, no upload API for patients."""
import hashlib
import errno
import argparse
import hmac
from http.cookies import SimpleCookie, CookieError
import json
import math
import os
from pathlib import Path
import re
import secrets
import stat
import struct
import threading
import time
from urllib.parse import urlsplit
import uuid
import zipfile
import zlib

MAX_ARCHIVE = 64 * 1024**2
MAX_PNG = 2 * 1024**2
COOKIE = 'mri_patient'


class PortalError(Exception):
    def __init__(self, status, code, message):
        self.status, self.code, self.message = status, code, message


class Response:
    def __init__(self, data, content_type='application/json; charset=utf-8', headers=None):
        self.data, self.content_type, self.headers = data, content_type, headers or {}


def error(status, code, message):
    raise PortalError(status, code, message)


def strict_json(data):
    return json.loads(data, parse_constant=lambda value: error(400, 'invalid_json', 'Invalid JSON'))


def private_mode(path, mode):
    # FAT-backed SD storage cannot enforce POSIX modes. HTTP authorization still
    # applies; actual read-only or unrelated I/O failures must remain fatal.
    try:
        os.chmod(path, mode)
    except OSError as exc:
        if exc.errno not in (errno.EPERM, errno.ENOTSUP, errno.EOPNOTSUPP):
            raise


def atomic(path, value):
    path = Path(path)
    temporary = path.with_name(path.name + '.writing-' + uuid.uuid4().hex)
    with temporary.open('x', encoding='utf-8') as stream:
        json.dump(value, stream, ensure_ascii=False, allow_nan=False)
        stream.flush()
        os.fsync(stream.fileno())
    private_mode(temporary, 0o600)
    os.replace(str(temporary), str(path))


def validate_png_bytes(data):
    if len(data) > MAX_PNG or data[:8] != b'\x89PNG\r\n\x1a\n':
        error(400, 'invalid_png', 'Invalid PNG image')
    offset, chunks, payload = 8, [], bytearray()
    width = height = channels = 0
    ended = False
    while offset + 12 <= len(data):
        size = struct.unpack_from('>I', data, offset)[0]
        kind = data[offset+4:offset+8]
        end = offset + 12 + size
        if end > len(data) or zlib.crc32(data[offset+4:end-4]) & 0xffffffff != struct.unpack_from('>I', data, end-4)[0]:
            error(400, 'invalid_png', 'Invalid PNG checksum')
        body = data[offset+8:end-4]
        if not chunks and kind != b'IHDR':
            error(400, 'invalid_png', 'Missing PNG header')
        if kind == b'IHDR':
            if chunks or size != 13:
                error(400, 'invalid_png', 'Invalid PNG header')
            width, height, depth, color, compression, filtering, interlace = struct.unpack('>II5B', body)
            channels = {0: 1, 2: 3, 4: 2, 6: 4}.get(color, 0)
            if not (1 <= width <= 1600 and 1 <= height <= 1200 and depth == 8 and channels and compression == filtering == interlace == 0):
                error(400, 'invalid_png', 'Expected non-interlaced 8-bit PNG within 1600 x 1200')
        elif kind == b'IDAT':
            payload.extend(body)
        elif kind == b'IEND':
            ended = size == 0 and end == len(data)
            break
        elif kind[:1].isupper() and kind != b'PLTE':
            error(400, 'invalid_png', 'Unsupported PNG chunk')
        chunks.append(kind)
        offset = end
    if not ended or not payload:
        error(400, 'invalid_png', 'Incomplete PNG')
    expected = height * (1 + width * channels)
    try:
        decoder = zlib.decompressobj()
        raw = decoder.decompress(bytes(payload), expected + 1)
        if len(raw) != expected or not decoder.eof or decoder.unused_data or any(raw[i] > 4 for i in range(0, expected, 1 + width * channels)):
            error(400, 'invalid_png', 'Invalid PNG pixel data')
    except zlib.error:
        error(400, 'invalid_png', 'Invalid PNG compression')


def bounded_zip_directory(path):
    # Bound central-directory objects before ZipFile allocates one per entry.
    with Path(path).open('rb') as stream:
        stream.seek(0, 2)
        length = stream.tell()
        start = max(0, length - 65557)
        stream.seek(start)
        tail = stream.read()
    index = tail.rfind(b'PK\x05\x06')
    if index < 0 or len(tail) - index < 22:
        error(400, 'invalid_archive', 'Missing ZIP directory')
    _, disk, cd_disk, disk_count, count, size, offset, comment = struct.unpack_from('<4s4H2IH', tail, index)
    if (disk or cd_disk or disk_count != count or not 1 <= count <= 1537 or size > 1024**2
            or offset + size != start + index or index + 22 + comment != len(tail)):
        error(400, 'invalid_archive', 'Unsupported or oversized ZIP directory')


def measurement(value):
    if value is None:
        return None
    if not isinstance(value, dict):
        error(400, 'invalid_measurement', 'Measurement must be an object')
    result = {}
    for key, count in (('volumes_mm3', 8), ('hippocampus_percent_parenchyma', 2)):
        if key in value:
            numbers = value[key]
            if not isinstance(numbers, list) or len(numbers) != count or any(type(v) not in (float, int) or not math.isfinite(v) or v < 0 for v in numbers):
                error(400, 'invalid_measurement', 'Invalid measurement values')
            if key.startswith('hippocampus') and any(v > 100 for v in numbers):
                error(400, 'invalid_measurement', 'Invalid percentage')
            result[key] = numbers
    if 'ratio_denominator' in value:
        if value['ratio_denominator'] != 'segmented_brain_parenchyma_not_ICV':
            error(400, 'invalid_measurement', 'Unsupported ratio denominator')
        result['ratio_denominator'] = value['ratio_denominator']
    return result


class PatientPortal:
    def __init__(self, root, web_root=None, session_seconds=1800, max_sessions=128):
        self.root = Path(root).resolve()
        self.root.mkdir(parents=True, exist_ok=True)
        private_mode(self.root, 0o700)
        self.web_root = Path(web_root or Path(__file__).parent / 'patient_web').resolve()
        self.lock = threading.RLock()
        self.session_seconds, self.max_sessions = session_seconds, max_sessions
        self.sessions, self.failures = {}, {}
        self.state_path = self.root / 'patients.json'
        self.state = strict_json(self.state_path.read_text('utf-8')) if self.state_path.exists() else {'cases': {}, 'tasks': {}}
        self.key_path = self.root / 'doctor.key'
        if not self.key_path.exists():
            descriptor = os.open(str(self.key_path), os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
            with os.fdopen(descriptor, 'w', encoding='ascii') as stream:
                stream.write(secrets.token_urlsafe(32) + '\n')
                stream.flush()
                os.fsync(stream.fileno())
        self.doctor_key = self.key_path.read_text('ascii').strip()
        if len(self.doctor_key) < 32:
            raise ValueError('Invalid doctor credential file')
        private_mode(self.key_path, 0o600)
        self.pairing = None
        self.pairing_dir = None
        self.pairing_request_id = None
        self.pairing_status = None

    def persist(self):
        atomic(self.state_path, self.state)

    @staticmethod
    def case_key(case_id):
        return hashlib.sha256(case_id.encode('utf-8')).hexdigest()

    @staticmethod
    def digest(code, salt):
        return hashlib.pbkdf2_hmac('sha256', code.encode('utf-8'), bytes.fromhex(salt), 120000).hex()

    def doctor(self, headers):
        values = headers.get_all('Authorization', [])
        if len(values) != 1 or not hmac.compare_digest(values[0].encode(), ('Bearer ' + self.doctor_key).encode()):
            error(401, 'doctor_auth_required', 'Doctor authorization required')

    def six_digit_code(self, previous=None):
        # Do not accidentally reuse the immediately preceding code on rotation.
        for _ in range(16):
            code = '%06d' % secrets.randbelow(1000000)
            if not previous or not hmac.compare_digest(self.digest(code, previous['salt']), previous['hash']):
                return code
        raise RuntimeError('Unable to generate a fresh access code')

    def configure_pairing(self, directory='/run'):
        """Enable local pairing signals; call only from the local service startup."""
        with self.lock:
            self.pairing_dir = Path(directory).resolve()
            self.pairing_dir.mkdir(parents=True, exist_ok=True)
            self.pairing = None
            # A stale request must never regenerate a code after service restart.
            self.pairing_request_id = self._local_request_id()
            self.pairing_status = None
            self._write_pairing_status()

    def _local_request_id(self):
        path = self.pairing_dir / 'mri-pairing-request'
        try:
            info = path.lstat()
            if (not stat.S_ISREG(info.st_mode) or info.st_size > 256
                    or (hasattr(os, 'geteuid') and info.st_uid != os.geteuid())):
                return None
            value = strict_json(path.read_text(encoding='utf-8'))
            request_id = value.get('request_id') if isinstance(value, dict) else None
            return request_id if isinstance(request_id, str) and re.fullmatch(r'[0-9a-f]{32}', request_id) else None
        except FileNotFoundError:
            return None
        except (ValueError, UnicodeError, PortalError):
            return None

    def _pairing_view(self):
        current = self.pairing
        if current and current['state'] == 'active' and time.monotonic() >= current['expires']:
            current['state'], current['code'] = 'expired', None
        active = current and current['state'] == 'active'
        return {'state': current['state'] if current else 'inactive',
                'pairing_code': current['code'] if active else None,
                'expires_in': max(0, math.ceil(current['expires'] - time.monotonic())) if active else 0,
                'remaining_attempts': max(0, 5 - current['failures']) if active else 0}

    def _write_pairing_status(self):
        status = self._pairing_view()
        if self.pairing_dir is not None and status != self.pairing_status:
            atomic(self.pairing_dir / 'mri-pairing.json', status)
            self.pairing_status = status
        return status

    def create_pairing(self):
        """Local-only operation. Never expose this method as an HTTP endpoint."""
        with self.lock:
            if self.pairing_dir is None:
                raise RuntimeError('Local pairing directory is not configured')
            code = self.six_digit_code(self.pairing)
            salt = secrets.token_hex(16)
            self.pairing = {'state': 'active', 'code': code, 'salt': salt,
                            'hash': self.digest(code, salt), 'failures': 0,
                            'expires': time.monotonic() + 300}
            return self._write_pairing_status()

    def poll_pairing_request(self):
        """Local background poll: consume each nonce once; no network action creates a code."""
        with self.lock:
            if self.pairing_dir is None:
                raise RuntimeError('Local pairing directory is not configured')
            request_id = self._local_request_id()
            if request_id and request_id != self.pairing_request_id:
                self.pairing_request_id = request_id
                self.create_pairing()
            return self._write_pairing_status()

    def redeem_pairing(self, value):
        """Exchange a local five-minute, single-use code for the persistent doctor key."""
        with self.lock:
            status = self._write_pairing_status()
            if status['state'] == 'locked':
                error(429, 'pairing_locked', 'Generate a new code on the board')
            if status['state'] == 'expired':
                error(410, 'pairing_expired', 'Generate a new code on the board')
            if status['state'] != 'active':
                error(409, 'pairing_unavailable', 'Generate a code on the board')
            code = value.get('pairing_code') if isinstance(value, dict) else None
            valid = (isinstance(code, str) and re.fullmatch(r'[0-9]{6}', code)
                     and hmac.compare_digest(self.digest(code, self.pairing['salt']), self.pairing['hash']))
            if not valid:
                self.pairing['failures'] += 1
                if self.pairing['failures'] >= 5:
                    self.pairing['state'], self.pairing['code'] = 'locked', None
                self._write_pairing_status()
                if self.pairing['state'] == 'locked':
                    error(429, 'pairing_locked', 'Generate a new code on the board')
                error(401, 'invalid_pairing_code', 'Invalid pairing code')
            self.pairing['state'], self.pairing['code'] = 'used', None
            self._write_pairing_status()
            return {'doctor_token': self.doctor_key}

    @staticmethod
    def origin(headers):
        if headers.get('Sec-Fetch-Site') not in (None, 'same-origin', 'none'):
            error(403, 'cross_origin', 'Same-origin request required')
        origins, hosts = headers.get_all('Origin', []), headers.get_all('Host', [])
        if len(hosts) != 1 or len(origins) > 1:
            error(403, 'cross_origin', 'Invalid request origin')
        if origins:
            parsed = urlsplit(origins[0])
            if parsed.scheme != 'http' or parsed.netloc != hosts[0] or parsed.path or parsed.query or parsed.fragment:
                error(403, 'cross_origin', 'Same-origin request required')

    def prune(self):
        now = time.monotonic()
        self.sessions = {key: v for key, v in self.sessions.items() if v['expires'] > now}
        self.failures = {key: value for key, value in self.failures.items() if value[0] > now - 60}

    def login(self, value, address):
        if not isinstance(value, dict) or not isinstance(value.get('case_id'), str) or not isinstance(value.get('access_code'), str) or len(value['case_id']) > 80 or len(value['access_code']) > 128:
            error(400, 'invalid_login', 'Case ID and access code required')
        with self.lock:
            self.prune()
            key = self.case_key(value['case_id'])
            rate_keys = ('ip:' + address, 'case:' + key)
            if any(self.failures.get(k, (0, 0))[1] >= 5 for k in rate_keys) or len(self.failures) >= 2048:
                error(429, 'login_rate_limit', 'Too many attempts; retry later')
            record = self.state['cases'].get(key)
            salt = record['salt'] if record else '00' * 16
            expected = record['hash'] if record else '00' * 32
            valid = hmac.compare_digest(self.digest(value['access_code'], salt), expected)
            if not record or not valid or not any(t.get('case_key') == key and t.get('published') for t in self.state['tasks'].values()):
                for rate_key in rate_keys:
                    started, count = self.failures.get(rate_key, (time.monotonic(), 0))
                    self.failures[rate_key] = (started, count + 1)
                error(401, 'invalid_credentials', 'Invalid case ID or access code')
            if len(self.sessions) >= self.max_sessions:
                error(503, 'session_limit', 'Please retry later')
            token = secrets.token_urlsafe(32)
            self.sessions[hashlib.sha256(token.encode()).hexdigest()] = {'case_key': key, 'case_id': value['case_id'], 'generation': record['generation'], 'expires': time.monotonic() + self.session_seconds}
            return {'case_id': value['case_id'], 'expires_in': self.session_seconds}, self.cookie(token, self.session_seconds)

    @staticmethod
    def cookie(token, age):
        return '%s=%s; HttpOnly; SameSite=Strict; Path=/patient; Max-Age=%d' % (COOKIE, token, age)

    def session(self, headers):
        try:
            cookies = SimpleCookie()
            cookies.load(headers.get('Cookie', ''))
            token = cookies[COOKIE].value
        except (CookieError, KeyError):
            error(401, 'patient_auth_required', 'Please sign in')
        key = hashlib.sha256(token.encode()).hexdigest()
        with self.lock:
            self.prune()
            current = self.sessions.get(key)
            record = self.state['cases'].get(current['case_key']) if current else None
            if not current or not record or record['generation'] != current['generation']:
                error(401, 'patient_auth_required', 'Please sign in')
            result = current.copy()
            result['session_key'] = key
            return key, result

    def invalidate(self, case_key):
        self.sessions = {key: s for key, s in self.sessions.items() if s['case_key'] != case_key}

    def publish(self, store, task_id, value):
        if not isinstance(value, dict):
            error(400, 'invalid_publication', 'Expected publication object')
        supplied = measurement(value.get('measurement')) if 'measurement' in value else None
        with self.lock:
            state = store.get(task_id)
            if state['classification'].get('status') != 'complete':
                error(409, 'not_complete', 'Only completed classification may be published')
            key = self.case_key(state['case_id'])
            code, salt = self.six_digit_code(self.state['cases'].get(key)), secrets.token_hex(16)
            generation = self.state['cases'].get(key, {}).get('generation', 0) + 1
            self.state['cases'][key] = {'salt': salt, 'hash': self.digest(code, salt), 'generation': generation}
            item = self.state['tasks'].setdefault(task_id, {})
            item.update(case_key=key, published=True)
            if supplied is not None:
                item['measurement'] = supplied
            self.invalidate(key)
            self.persist()
            return {'case_id': state['case_id'], 'access_code': code, 'patient_url': '/patient/'}

    def revoke(self, store, task_id):
        with self.lock:
            state = store.get(task_id)
            key = self.case_key(state['case_id'])
            if task_id in self.state['tasks']:
                self.state['tasks'][task_id]['published'] = False
            self.invalidate(key)
            self.persist()
            return {'task_id': task_id, 'published': False}

    def owned(self, store, session, task_id):
        self.check_session(session)
        item = self.state['tasks'].get(task_id, {})
        if not item.get('published') or item.get('case_key') != session['case_key']:
            error(404, 'not_found', 'Result not found')
        state = store.get(task_id)
        if state['case_id'] != session['case_id']:
            error(404, 'not_found', 'Result not found')
        return state, item

    def check_session(self, session):
        record = self.state['cases'].get(session['case_key'])
        if (session['session_key'] not in self.sessions or session['expires'] <= time.monotonic()
                or not record or record['generation'] != session['generation']):
            error(401, 'patient_auth_required', 'Please sign in')

    def task_view(self, state, item):
        classification = state.get('classification', {})
        status = classification.get('status')
        clean = {'status': status if status in ('pending', 'running', 'complete', 'failed') else 'pending'}
        source = classification.get('result', {})
        fields = ('class_id', 'prediction', 'probability_positive', 'score', 'probabilities_abc', 'severity_probability', 'severity_status')
        if status == 'complete':
            clean['result'] = {k: source[k] for k in fields if k in source}
        seg = state.get('segmentation', {})
        segmentation = {'status': seg.get('status', 'pending')}
        raw = item.get('measurement', seg.get('measurement'))
        try:
            measured = measurement(raw)
        except PortalError:
            measured = None
        if measured is not None:
            segmentation['measurement'] = measured
        view = {k: state[k] for k in ('task_id', 'scan_id', 'created_at')}
        view.update(classification=clean, segmentation=segmentation, previews=[int(k) for k in state.get('previews', {}) if k in ('0', '1', '2')])
        if 'images' in item:
            view['images'] = {'shape': item['images']['shape']}
        return view

    def me(self, store, session):
        with self.lock:
            self.check_session(session)
            tasks = []
            for task_id, item in self.state['tasks'].items():
                if store.deletions.task_deleted(task_id):
                    continue
                if item.get('published') and item.get('case_key') == session['case_key']:
                    state, item = self.owned(store, session, task_id)
                    tasks.append(self.task_view(state, item))
            return {'case_id': session['case_id'], 'tasks': sorted(tasks, key=lambda t: t['created_at'], reverse=True), 'expires_in': max(0, int(session['expires'] - time.monotonic()))}

    def image(self, store, session, task_id, slot=None, axis=None, index=None):
        with self.lock:
            state, item = self.owned(store, session, task_id)
            folder = store.folder(task_id).resolve()
            if slot is not None:
                target = Path(state.get('previews', {}).get(str(slot), '')).resolve()
                if target.parent != folder or not target.is_file():
                    error(404, 'not_found', 'Image not found')
                if target.stat().st_size > MAX_PNG:
                    error(404, 'not_found', 'Image not found')
                data = target.read_bytes()
            else:
                archive = item.get('images')
                if not archive or not 0 <= axis < 3 or not 0 <= index < archive['shape'][axis]:
                    error(404, 'not_found', 'Image not found')
                target = (folder / archive['file']).resolve()
                if target.parent != folder:
                    error(404, 'not_found', 'Image not found')
                with zipfile.ZipFile(target) as images:
                    info = images.getinfo('a%d_%d.png' % (axis, index))
                    if info.file_size > MAX_PNG:
                        error(404, 'not_found', 'Image not found')
                    data = images.read(info)
            validate_png_bytes(data)
            return Response(data, 'image/png')

    def upload_images(self, store, task_id, stream, length):
        if not 0 < length <= MAX_ARCHIVE:
            error(413, 'upload_size', 'Archive exceeds 64 MiB')
        reservation = (task_id, 'patient-images', None)
        with store.lock:
            store.get(task_id)
            if reservation in store.uploading:
                error(409, 'upload_busy', 'Image upload already in progress')
            store.budget(length)
            store.reserved_bytes += length
            store.uploading.add(reservation)
        destination = store.folder(task_id) / ('patient_images_' + uuid.uuid4().hex + '.zip')
        try:
            with destination.open('xb') as output:
                remaining = length
                while remaining:
                    block = stream.read(min(65536, remaining))
                    if not block:
                        error(400, 'incomplete_upload', 'Incomplete archive')
                    output.write(block)
                    remaining -= len(block)
                output.flush()
                os.fsync(output.fileno())
            try:
                bounded_zip_directory(destination)
                with zipfile.ZipFile(destination) as archive:
                    entries = archive.infolist()
                    names = [i.filename for i in entries]
                    if len(entries) > 1537 or len(set(names)) != len(names) or sum(i.file_size for i in entries) > MAX_ARCHIVE or any(i.flag_bits & 1 or i.compress_type not in (zipfile.ZIP_STORED, zipfile.ZIP_DEFLATED) or ((i.external_attr >> 16) & 0o170000) == 0o120000 for i in entries):
                        error(400, 'invalid_archive', 'Invalid or oversized archive')
                    if 'manifest.json' not in names or archive.getinfo('manifest.json').file_size > 4096:
                        error(400, 'invalid_archive', 'Missing manifest')
                    meta = strict_json(archive.read('manifest.json'))
                    shape = meta.get('shape') if isinstance(meta, dict) else None
                    if not isinstance(shape, list) or len(shape) != 3 or any(type(n) is not int or not 1 <= n <= 512 for n in shape):
                        error(400, 'invalid_archive', 'Invalid three-axis shape')
                    expected = {'manifest.json'} | {'a%d_%d.png' % (axis, index) for axis in range(3) for index in range(shape[axis])}
                    if set(names) != expected:
                        error(400, 'invalid_archive', 'Archive must contain exactly the declared slices')
                    for info in entries:
                        if info.filename != 'manifest.json':
                            if info.file_size > MAX_PNG:
                                error(400, 'invalid_archive', 'PNG exceeds limit')
                            validate_png_bytes(archive.read(info))
            except (zipfile.BadZipFile, RuntimeError, KeyError, ValueError, zlib.error):
                error(400, 'invalid_archive', 'Invalid image archive')
            with self.lock:
                state = store.get(task_id)
                item = self.state['tasks'].setdefault(task_id, {'case_key': self.case_key(state['case_id']), 'published': False})
                item['images'] = {'file': destination.name, 'shape': shape, 'bytes': length}
                self.persist()
            return {'task_id': task_id, 'images': {'shape': shape}}
        finally:
            with store.lock:
                store.reserved_bytes -= length
                store.uploading.discard(reservation)

    def images_status(self, store, task_id):
        """Check the stored archive index, not all slice pixels, before a repeat publication."""
        missing = {'exists': False, 'shape': None}
        with self.lock:
            state = store.get(task_id)
            item = self.state['tasks'].get(task_id, {})
            info = item.get('images')
            if item.get('case_key') != self.case_key(state['case_id']) or not isinstance(info, dict):
                return missing
            shape, filename = info.get('shape'), info.get('file')
            if (not isinstance(shape, list) or len(shape) != 3 or any(type(n) is not int or not 1 <= n <= 512 for n in shape)
                    or not isinstance(filename, str) or not re.fullmatch(r'patient_images_[0-9a-f]{32}\.zip', filename)):
                return missing
            folder = store.folder(task_id).resolve()
            path = folder / filename
            try:
                if path.is_symlink() or path.resolve().parent != folder or not path.is_file():
                    return missing
                size = path.stat().st_size
                if not 0 < size <= MAX_ARCHIVE or ('bytes' in info and size != info['bytes']):
                    return missing
                bounded_zip_directory(path)
                with zipfile.ZipFile(path) as archive:
                    entries = archive.infolist()
                    expected = {'manifest.json'} | {'a%d_%d.png' % (axis, index) for axis in range(3) for index in range(shape[axis])}
                    if (len(entries) != len(expected) or {entry.filename for entry in entries} != expected
                            or archive.getinfo('manifest.json').file_size > 4096
                            or sum(entry.file_size for entry in entries) > MAX_ARCHIVE
                            or any(entry.file_size > MAX_PNG or entry.flag_bits & 1 for entry in entries)):
                        return missing
                    manifest = strict_json(archive.read('manifest.json'))
                    if not isinstance(manifest, dict) or manifest.get('shape') != shape:
                        return missing
                return {'exists': True, 'shape': list(shape)}
            except (OSError, ValueError, RuntimeError, KeyError, zipfile.BadZipFile, PortalError):
                return missing

    def route(self, handler, parts):
        self.origin(handler.headers)
        store = handler.server.store
        if parts == ['patient', 'api', 'login'] and handler.command == 'POST':
            result, cookie = self.login(handler.body(), handler.client_address[0])
            return 200, Response(json.dumps(result).encode(), headers={'Set-Cookie': cookie})
        if parts[:2] == ['patient', 'api']:
            key, session = self.session(handler.headers)
            if parts == ['patient', 'api', 'logout'] and handler.command == 'POST':
                with self.lock:
                    self.sessions.pop(key, None)
                return 200, Response(b'{}', headers={'Set-Cookie': self.cookie('', 0)})
            if parts == ['patient', 'api', 'me'] and handler.command == 'GET':
                return 200, self.me(store, session)
            if len(parts) == 6 and parts[2] == 'tasks' and parts[4] == 'preview' and parts[5] in ('0', '1', '2') and handler.command == 'GET':
                return 200, self.image(store, session, parts[3], slot=int(parts[5]))
            if len(parts) == 7 and parts[2] == 'tasks' and parts[4] == 'image' and parts[5] in ('0', '1', '2') and re.fullmatch(r'0|[1-9][0-9]{0,2}', parts[6]) and handler.command == 'GET':
                return 200, self.image(store, session, parts[3], axis=int(parts[5]), index=int(parts[6]))
            error(404, 'not_found', 'Endpoint not found')
        if handler.command == 'GET':
            allowed = {'index.html': 'text/html; charset=utf-8', 'app.js': 'text/javascript; charset=utf-8', 'styles.css': 'text/css; charset=utf-8'}
            name = parts[1] if len(parts) == 2 else 'index.html' if parts == ['patient'] else None
            target = (self.web_root / name).resolve() if name in allowed else None
            if target and target.parent == self.web_root and target.is_file():
                return 200, Response(target.read_bytes(), allowed[name])
        error(404, 'not_found', 'Page not found')


def request_pairing(directory='/run'):
    """Signal the running service from the board's root-owned UI or local CLI."""
    if hasattr(os, 'geteuid') and os.geteuid() != 0:
        raise PermissionError('Pairing requests require local root permission')
    directory = Path(directory).resolve()
    directory.mkdir(parents=True, exist_ok=True)
    atomic(directory / 'mri-pairing-request', {'request_id': uuid.uuid4().hex})


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Local MRI doctor pairing signal; does not expose credentials')
    parser.add_argument('command', choices=('request-pairing',))
    parser.add_argument('--run-dir', default='/run')
    arguments = parser.parse_args()
    request_pairing(arguments.run_dir)
