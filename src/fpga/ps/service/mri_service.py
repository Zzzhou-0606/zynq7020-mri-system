"""Single-job MRI board API. Python standard library only; no implicit CPU fallback.

All paths are task scoped. Completed jobs and failed upload parts are retained;
the configured storage budget rejects new work rather than deleting evidence.
"""
import argparse
import filecmp
import json
import math
import os
from pathlib import Path
import re
import shutil
import signal
import struct
import subprocess
import sys
import threading
import time
import uuid
import zlib
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import urlsplit

for _base in (Path(__file__).resolve().parents[1], Path(__file__).resolve().parents[3]):
    if (_base / "shared/protocol/mri_v1.py").is_file():
        sys.path.insert(0, str(_base))
        break
from shared.protocol.mri_v1 import INPUT_BYTES, MODEL_VERSION, validate_input, validate_result
try:
    from .board_sensors import chip_temperature
    from .patient_portal import PatientPortal, PortalError, Response, MAX_ARCHIVE
    from .mri_board_peripherals import save_rtc, beep_once
    from .scan_deletion import ScanDeletion
except ImportError:
    from board_sensors import chip_temperature
    from patient_portal import PatientPortal, PortalError, Response, MAX_ARCHIVE
    from mri_board_peripherals import save_rtc, beep_once
    from scan_deletion import ScanDeletion
IDENTIFIER = re.compile(r"[A-Za-z0-9][A-Za-z0-9_.-]{0,79}\Z")
PNG = b"\x89PNG\r\n\x1a\n"


class ApiError(Exception):
    def __init__(self, status, code, message):
        self.status, self.code, self.message = status, code, message


def validate_uploaded_input(path):
    # Keep the original binary contract checks, using the compiled streaming validator.
    process = subprocess.run(["/opt/mri/bin/mri_validate_input", str(path)],
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=30)
    if process.returncode == 2:
        raise ValueError(process.stderr.decode("utf-8", "replace").strip())
    if process.returncode:
        raise RuntimeError("compiled input validator failed: " + str(process.returncode))


def json_bytes(value):
    return json.dumps(value, ensure_ascii=False, allow_nan=False, separators=(",", ":")).encode("utf-8")


def atomic_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".writing-" + uuid.uuid4().hex)
    with temporary.open("xb") as stream:
        stream.write(json_bytes(value))
        stream.flush()
        os.fsync(stream.fileno())
    os.replace(str(temporary), str(path))


def read_json(path):
    return json.loads(Path(path).read_text(encoding="utf-8"), parse_constant=lambda x: (_ for _ in ()).throw(ValueError(x)))


def sync_system_time(value):
    epoch = value.get("unix_time") if isinstance(value, dict) else None
    # The shipped ARM32 system uses a 32-bit time_t. Reject malformed/overflowing
    # dates rather than trusting arbitrary strings passed to a shell command.
    if type(epoch) not in (int, float) or not math.isfinite(epoch) or not 1577836800 <= epoch < 2145916800:
        raise ApiError(400, "invalid_time", "unix_time must be UTC seconds between 2020 and 2038")
    if not hasattr(time, "clock_settime") or not hasattr(time, "CLOCK_REALTIME"):
        raise ApiError(503, "clock_unavailable", "System clock adjustment is unavailable")
    previous = time.time()
    try:
        time.clock_settime(time.CLOCK_REALTIME, epoch)
    except (OSError, OverflowError, ValueError):
        raise ApiError(503, "clock_set_failed", "System clock adjustment failed; check service permissions")
    actual = time.time()
    if abs(actual - epoch) > 5:
        raise ApiError(503, "clock_verify_failed", "System clock differs from the requested time")
    rtc = save_rtc()
    result = {"synced": True, "unix_time": actual, "previous_unix_time": previous,
              "rtc_updated": rtc.get("updated") is True}
    if not result["rtc_updated"]:
        result["rtc_error"] = rtc.get("error", "RTC is unavailable")
    return result


def validate_png(path):
    data = Path(path).read_bytes()
    if len(data) < 33 or data[:8] != PNG or data[12:16] != b"IHDR":
        raise ApiError(400, "invalid_png", "preview must be a PNG image")
    width, height = struct.unpack(">II", data[16:24])
    if not (1 <= width <= 1600 and 1 <= height <= 1200):
        raise ApiError(400, "invalid_png", "preview dimensions exceed 1600 x 1200")
    offset, image_data, finished = 8, False, False
    while offset + 12 <= len(data):
        size = struct.unpack(">I", data[offset:offset + 4])[0]
        end = offset + 12 + size
        if end > len(data):
            break
        kind = data[offset + 4:offset + 8]
        checksum = struct.unpack(">I", data[end - 4:end])[0]
        if zlib.crc32(data[offset + 4:end - 4]) & 0xffffffff != checksum:
            break
        if kind == b"IDAT" and size:
            image_data = True
        offset = end
        if kind == b"IEND" and size == 0:
            finished = offset == len(data)
            break
    if not finished or not image_data:
        raise ApiError(400, "invalid_png", "preview PNG is truncated or has an invalid checksum")


def normalized_progress(progress):
    stage = str(progress.get("stage", "inference"))[:160]
    completed, total = progress.get("completed"), progress.get("total")
    valid_counts = (type(completed) is int and type(total) is int and 0 <= completed <= total <= 1000000)
    if "percent" in progress:
        percent = float(progress["percent"])
    elif valid_counts and stage in ("infer_a", "infer_b", "infer_c"):
        offset, expected = {"infer_a": (0, 34), "infer_b": (34, 38), "infer_c": (72, 59)}[stage]
        if total != expected:
            raise ValueError("unexpected progress slice count")
        percent = 100.0 * (offset + completed) / 131
    else:
        percent = 100 if stage == "complete" else 0
    if not math.isfinite(percent) or not 0 <= percent <= 100:
        raise ValueError("invalid progress")
    result = {"percent": percent, "stage": stage}
    if valid_counts:
        result.update(completed=completed, total=total)
    return result


class TaskStore:
    def __init__(self, root, runtime, model, backend="pl", input_limit=64 * 1024**2,
                 storage_limit=512 * 1024**2, runtime_timeout=24 * 3600):
        self.root = Path(root).resolve()
        self.root.mkdir(parents=True, exist_ok=True)
        self.runtime, self.model = str(runtime), str(model)
        if backend not in ("pl", "cpu"):
            raise ValueError("backend must be pl or cpu")
        self.backend = backend
        self.input_limit, self.storage_limit = input_limit, storage_limit
        self.runtime_timeout = runtime_timeout
        self.lock = threading.RLock()
        self.uploading = set()
        self.reserved_bytes = 0
        self.created_monotonic = {}
        self.active = None
        self.current = None
        self.process = None
        self.stopping = False
        self.pl_state_path = Path("/run/mri-pl-state")
        self.deletions = ScanDeletion(self, ApiError)
        # An interrupted process must not leave a job permanently 'running'.
        for path in self.root.glob("*/status.json"):
            if self.deletions.task_deleted(path.parent.name):
                continue
            try:
                state = read_json(path)
                if state.get("status") == "running":
                    state.update(status="failed", error="service restarted during inference")
                    state["classification"] = {"status": "failed", "error": state["error"]}
                    atomic_json(path, state)
            except (ValueError, OSError):
                continue
        atomic_json(self.root / "current.json", {"status": "idle", "model_version": MODEL_VERSION,
                                                 "execution_backend": self.execution_backend})

    @property
    def execution_backend(self):
        return "pl" if self.backend == "pl" else "ps_cpu_reference"

    def pl_health(self):
        if self.backend != "pl":
            return {"state": "not_used", "locked": False, "recovery_required": False}
        try:
            # The runtime owns this fsynced latch. The service only reads it and
            # cannot clear a potentially active hardware transaction.
            value = self.pl_state_path.read_bytes()
            state = "idle" if value == b"idle\n" else "busy" if value == b"busy\n" else "invalid"
        except FileNotFoundError:
            state = "uninitialized"
        except OSError:
            state = "unreadable"
        locked = state not in ("idle", "uninitialized")
        return {"state": state, "locked": locked, "recovery_required": locked and self.active is None}

    def folder(self, task_id):
        try:
            if str(uuid.UUID(task_id)) != task_id:
                raise ValueError()
        except (ValueError, AttributeError):
            raise ApiError(400, "invalid_task_id", "task_id must be a lowercase canonical UUID")
        return self.root / task_id

    def get(self, task_id):
        with self.lock:
            path = self.folder(task_id) / "status.json"
            self.deletions.check_task(task_id)
            if not path.is_file():
                raise ApiError(404, "unknown_task", "task does not exist")
            return read_json(path)

    def save(self, state):
        with self.lock:
            self.deletions.check_task(state["task_id"])
            state["updated_at"] = time.time()
            atomic_json(self.folder(state["task_id"]) / "status.json", state)
            if self.current == state["task_id"]:
                atomic_json(self.root / "current.json", state)

    def budget(self, extra):
        used = sum(p.stat().st_size for p in self.root.rglob("*") if p.is_file())
        if used + self.reserved_bytes + extra > self.storage_limit or shutil.disk_usage(str(self.root)).free < self.reserved_bytes + extra + 8 * 1024**2:
            raise ApiError(507, "storage_limit", "board task storage is full; archive retained tasks explicitly")

    def create(self, metadata):
        required = ("task_id", "case_id", "scan_id", "model_version")
        if not isinstance(metadata, dict) or any(k not in metadata for k in required):
            raise ApiError(400, "invalid_metadata", "task_id, case_id, scan_id and model_version are required")
        if (not isinstance(metadata["case_id"], str) or not 1 <= len(metadata["case_id"]) <= 80
                or not metadata["case_id"].isprintable() or not metadata["case_id"].strip()
                or not isinstance(metadata["scan_id"], str) or not IDENTIFIER.fullmatch(metadata["scan_id"])):
            raise ApiError(400, "invalid_metadata", "case_id must be 1-80 printable characters; scan_id must be an ASCII identifier")
        if metadata["model_version"] != MODEL_VERSION:
            raise ApiError(409, "model_mismatch", "unsupported frozen model version")
        folder = self.folder(metadata["task_id"])
        with self.lock:
            self.deletions.check_create(metadata)
            if (folder / "status.json").exists():
                existing = self.get(metadata["task_id"])
                if any(existing[k] != metadata[k] for k in required):
                    raise ApiError(409, "task_conflict", "task_id already belongs to different metadata")
                return existing
            self.budget(16384)
            state = {k: metadata[k] for k in required}
            state.update(status="created", classification={"status": "pending"},
                         segmentation={"status": "pending"}, progress={"percent": 0, "stage": "awaiting_input"},
                         previews={}, execution_backend=self.execution_backend, created_at=time.time())
            self.created_monotonic[state["task_id"]] = time.monotonic()
            if self.active is None:
                self.current = state["task_id"]
            self.save(state)
            return state

    def upload(self, task_id, kind, stream, length, slot=None):
        limit = self.input_limit if kind == "input" else 2 * 1024**2
        if length <= 0 or length > limit:
            raise ApiError(413, "upload_size", "upload is empty or exceeds the configured limit")
        if kind == "input" and length != INPUT_BYTES:
            raise ApiError(400, "input_size", "MRI RAW v1 requires exactly %d bytes" % INPUT_BYTES)
        with self.lock:
            state = self.get(task_id)
            key = (task_id, kind, slot)
            if key in self.uploading:
                raise ApiError(409, "upload_busy", "this upload is already in progress")
            if kind == "input" and state["status"] not in ("created", "ready"):
                raise ApiError(409, "task_started", "input cannot change after execution starts")
            self.budget(length)
            self.uploading.add(key)
            self.reserved_bytes += length
        destination = self.folder(task_id) / ("input.bin" if kind == "input" else "preview_%s_%s.png" % (slot, uuid.uuid4().hex))
        temporary = destination.with_name(destination.name + ".part-" + uuid.uuid4().hex)
        try:
            remaining = length
            with temporary.open("xb") as output:
                while remaining:
                    chunk = stream.read(min(65536, remaining))
                    if not chunk:
                        raise ApiError(400, "incomplete_upload", "connection ended before Content-Length bytes")
                    output.write(chunk)
                    remaining -= len(chunk)
                output.flush()
                os.fsync(output.fileno())
            if kind == "input":
                try:
                    validate_uploaded_input(temporary)
                except (ValueError, OSError) as error:
                    raise ApiError(400, "invalid_input", str(error))
            if kind == "preview":
                validate_png(temporary)
            with self.lock:
                state = self.get(task_id)
                existing = destination if kind == "input" else Path(state["previews"].get(str(slot), str(destination)))
                if existing.exists() and filecmp.cmp(str(existing), str(temporary), shallow=False):
                    destination = existing
                    # Retain the retry part as evidence. A changed preview creates a new version below.
                elif kind == "input" and destination.exists():
                    # Idempotent retries are accepted only when bytes match.
                    raise ApiError(409, "upload_conflict", "an immutable input already exists with different bytes")
                else:
                    os.replace(str(temporary), str(destination))
                if kind == "input":
                    state["status"] = "ready"
                    state["input_bytes"] = length
                    state["progress"] = {"percent": 0, "stage": "ready"}
                else:
                    state["previews"][str(slot)] = str(destination)
                self.save(state)
                return state
        finally:
            with self.lock:
                self.uploading.discard(key)
                self.reserved_bytes -= length

    def segmentation(self, task_id, value):
        if not isinstance(value, dict) or value.get("status") not in ("pending", "running", "complete", "failed"):
            raise ApiError(400, "invalid_segmentation", "invalid segmentation status")
        with self.lock:
            state = self.get(task_id)
            previous = state["segmentation"]
            if previous.get("status") in ("complete", "failed") and value != previous:
                raise ApiError(409, "segmentation_terminal", "segmentation status is already terminal")
            state["segmentation"] = value
            self.save(state)
        self.notify_complete(state)
        return state

    def notify_complete(self, state):
        # Both pipelines must finish; repeated status updates do not replay the
        # alert. The peripheral helper owns a persistent per-task once marker.
        if (state.get("classification", {}).get("status") == "complete"
                and state.get("segmentation", {}).get("status") == "complete"):
            try:
                beep_once(state["task_id"])
            except (OSError, ValueError):
                pass  # An unavailable buzzer cannot turn a valid result into failure.

    def start(self, task_id):
        with self.lock:
            if self.stopping:
                raise ApiError(503, "service_stopping", "service is shutting down")
            state = self.get(task_id)
            if state["status"] in ("running", "complete", "failed"):
                return state
            if state["status"] != "ready" or any(k[0] == task_id and k[1] == "input" for k in self.uploading):
                raise ApiError(409, "not_ready", "input upload must finish before starting")
            if self.active is not None:
                raise ApiError(409, "board_busy", "another task is running; queue jobs on the computer")
            if self.pl_health()["locked"]:
                raise ApiError(503, "pl_recovery_required", "PL is latched busy or its state is unreadable; reboot the board before retrying")
            self.active = self.current = task_id
            state.update(status="running", classification={"status": "running"},
                         progress={"percent": 0, "stage": "starting"})
            self.save(state)
            threading.Thread(target=self.run, args=(task_id,), daemon=True).start()
            return state

    def stop(self):
        with self.lock:
            self.stopping = True
            process = self.process
            if process is not None and process.poll() is None:
                process.terminate()
        if process is not None:
            try:
                process.wait(timeout=3)
            except subprocess.TimeoutExpired:
                process.kill()
                process.wait()

    def run(self, task_id):
        folder = self.folder(task_id)
        process = None
        try:
            if not Path(self.runtime).is_file() or not Path(self.model).is_file():
                raise RuntimeError("runtime or model file missing; inference was not executed")
            command = [self.runtime, "--input", str(folder / "input.bin"), "--model", self.model,
                       "--result", str(folder / "result.json"), "--progress", str(folder / "progress.json"),
                       "--backend", self.backend]
            started = time.monotonic()
            with (folder / "runtime.log").open("xb") as log:
                with self.lock:
                    if self.stopping:
                        raise RuntimeError("service stopped before inference started")
                    process = subprocess.Popen(command, stdout=log, stderr=subprocess.STDOUT)
                    self.process = process
                while process.poll() is None:
                    if time.monotonic() - started > self.runtime_timeout:
                        process.kill()
                        process.wait()
                        raise RuntimeError("inference exceeded configured time limit")
                    if (folder / "progress.json").is_file():
                        try:
                            progress = read_json(folder / "progress.json")
                            progress = normalized_progress(progress)
                            with self.lock:
                                state = self.get(task_id)
                                state["progress"] = progress
                                self.save(state)
                        except (ValueError, OSError, TypeError):
                            pass
                    time.sleep(.25)
            if process.returncode:
                raise RuntimeError("inference runtime failed with exit code %s; see task runtime.log" % process.returncode)
            result = read_json(folder / "result.json")
            validate_result(result, backend=self.execution_backend)
            with self.lock:
                state = self.get(task_id)
                result.update({k: state[k] for k in ("task_id", "case_id", "scan_id", "model_version")})
                result["service_timing_ms"] = {
                    "runtime_process_ms": 1000.0 * (time.monotonic() - started),
                    "submit_to_result_ms": (1000.0 * (time.monotonic() - self.created_monotonic[task_id])
                                            if task_id in self.created_monotonic else None),
                    "runtime_clock": "monotonic",
                    "submit_clock": "monotonic" if task_id in self.created_monotonic else "unavailable_after_restart",
                }
                atomic_json(folder / "result.json", result)
                state.update(status="complete", classification={"status": "complete", "result": result},
                             progress={"percent": 100, "stage": "complete"})
                self.save(state)
            self.notify_complete(state)
        except Exception as error:
            with self.lock:
                state = self.get(task_id)
                message = str(error)
                if self.pl_health()["locked"]:
                    message += "; PL remains locked. Reboot the board before another PL task."
                state.update(status="failed", error=message, classification={"status": "failed", "error": message})
                state["progress"]["stage"] = "failed"
                self.save(state)
        finally:
            with self.lock:
                self.active = None
                self.process = None
                self.created_monotonic.pop(task_id, None)


class Handler(BaseHTTPRequestHandler):
    server_version = "MRI-Board/1"
    timeout = 30

    def log_message(self, format, *args):
        # Credentials are never logged, including malformed request URLs.
        pass

    def end_headers(self):
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.send_header("X-Frame-Options", "DENY")
        self.send_header("Referrer-Policy", "no-referrer")
        self.send_header("Content-Security-Policy", "default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self' blob:; connect-src 'self'; frame-ancestors 'none'; base-uri 'none'; form-action 'self'")
        super().end_headers()

    def setup(self):
        super().setup()
        self.connection.settimeout(self.timeout)

    def read(self, size):
        data = self.rfile.read(size)
        self.received += len(data)
        return data

    def drain_rejected_body(self):
        # Drain bounded valid uploads before closing; otherwise a TCP reset can hide
        # the JSON error from clients that have already started sending the body.
        raw = self.headers.get_all("Content-Length", [])
        if len(raw) == 1 and raw[0].isdigit():
            length = int(raw[0])
            if length <= self.server.store.input_limit:
                remaining = length - self.received
                while remaining > 0:
                    data = self.read(min(remaining, 65536))
                    if not data:
                        break
                    remaining -= len(data)

    def respond(self, status, value):
        payload = value.data if isinstance(value, Response) else json_bytes(value)
        self.send_response(status)
        self.send_header("Content-Type", value.content_type if isinstance(value, Response) else "application/json; charset=utf-8")
        if isinstance(value, Response):
            for key, header_value in value.headers.items():
                self.send_header(key, header_value)
        self.send_header("Content-Length", str(len(payload)))
        self.send_header("Connection", "close")
        self.end_headers()
        self.wfile.write(payload)
        self.close_connection = True

    def length(self, limit):
        if self.headers.get("Transfer-Encoding"):
            raise ApiError(400, "transfer_encoding", "use Content-Length, not chunked transfer")
        raw = self.headers.get_all("Content-Length", [])
        if len(raw) != 1 or not raw[0].isdigit():
            raise ApiError(411, "content_length", "one valid Content-Length header is required")
        size = int(raw[0])
        if size > limit:
            raise ApiError(413, "upload_size", "request body exceeds configured limit")
        return size

    def body(self):
        size = self.length(65536)
        raw = self.read(size)
        if len(raw) != size:
            raise ApiError(400, "incomplete_upload", "incomplete request body")
        try:
            return json.loads(raw.decode("utf-8"), parse_constant=lambda x: (_ for _ in ()).throw(ValueError(x)))
        except (UnicodeError, ValueError):
            raise ApiError(400, "invalid_json", "body is not finite UTF-8 JSON")

    def route(self):
        store = self.server.store
        parsed = urlsplit(self.path)
        raw_path = parsed.path
        if parsed.scheme or parsed.netloc or '%' in raw_path or '\\' in raw_path or '//' in raw_path or any(p in ('.', '..') for p in raw_path.split('/')) or any(ord(c) < 32 for c in self.path):
            raise ApiError(400, "invalid_path", "invalid request path")
        path = raw_path.strip("/").split("/")
        portal = self.server.portal
        if portal:
            if raw_path == '/' and self.command == 'GET':
                return 302, Response(b'', headers={'Location': '/patient/'})
            if path[0] == 'patient':
                return portal.route(self, path)
            if path[0] == 'v1':
                portal.origin(self.headers)
                if path == ['v1', 'pair'] and self.command == 'POST':
                    return 200, portal.redeem_pairing(self.body())
                portal.doctor(self.headers)
        if self.command == "GET" and path == ["v1", "health"]:
            return 200, {"status": "ok", "model_version": MODEL_VERSION,
                         "runtime_variant": "overlap-v1",
                         "backend": store.execution_backend, "active_task": store.active,
                         "pl": store.pl_health(),
                         "chip_temperature": chip_temperature(),
                         "patient_portal": {"enabled": portal is not None},
                         "time_sync": {"supported": portal is not None},
                         "scan_deletion": {"supported": portal is not None},
                         "input_limit_bytes": store.input_limit}
        if self.command == "POST" and path == ["v1", "time"]:
            if portal is None:
                raise ApiError(403, "doctor_auth_required", "Clock adjustment requires doctor authorization")
            return 200, sync_system_time(self.body())
        if self.command == "POST" and path == ["v1", "tasks"]:
            return 201, store.create(self.body())
        if self.command == "DELETE" and len(path) == 3 and path[:2] == ["v1", "scans"]:
            if portal is None:
                raise ApiError(403, "doctor_auth_required", "Deletion requires doctor authorization")
            return 200, store.deletions.delete(portal, path[2], self.body())
        if len(path) < 3 or path[:2] != ["v1", "tasks"]:
            raise ApiError(404, "unknown_route", "endpoint does not exist")
        task_id = path[2]
        if portal and self.command == 'POST' and path[3:] == ['patient-access']:
            return 200, portal.publish(store, task_id, self.body())
        if portal and self.command == 'POST' and path[3:] == ['patient-revoke']:
            self.body()
            return 200, portal.revoke(store, task_id)
        if portal and self.command == 'PUT' and path[3:] == ['patient-images']:
            return 200, portal.upload_images(store, task_id, self, self.length(MAX_ARCHIVE))
        if portal and self.command == 'GET' and path[3:] == ['patient-images']:
            return 200, portal.images_status(store, task_id)
        if self.command == "GET" and len(path) == 3:
            return 200, store.get(task_id)
        if self.command == "GET" and path[3:] == ["result"]:
            state = store.get(task_id)
            if state["status"] != "complete":
                raise ApiError(409, "result_unavailable", "classification is not complete")
            return 200, state["classification"]["result"]
        if self.command == "POST" and path[3:] == ["start"]:
            # Consume and validate optional empty JSON so malformed retries cannot be mistaken for new input.
            if self.length(65536):
                self.body()
            return 202, store.start(task_id)
        if self.command == "PUT" and path[3:] == ["input"]:
            return 200, store.upload(task_id, "input", self, self.length(store.input_limit))
        if self.command == "PUT" and path[3:] == ["segmentation"]:
            return 200, store.segmentation(task_id, self.body())
        if self.command == "PUT" and len(path) == 5 and path[3] == "preview" and path[4] in ("0", "1", "2"):
            return 200, store.upload(task_id, "preview", self, self.length(2 * 1024**2), path[4])
        raise ApiError(404, "unknown_route", "endpoint does not exist")

    def dispatch(self):
        self.received = 0
        try:
            status, payload = self.route()
        except (ApiError, PortalError) as error:
            status, payload = error.status, {"error": {"code": error.code, "message": error.message}}
            try:
                # Authenticated deployment never drains rejected requests: an
                # anonymous large body must not occupy a worker waiting for bytes.
                if self.server.portal is None:
                    self.drain_rejected_body()
            except OSError:
                pass
        except (OSError, ValueError, TypeError, KeyError) as error:
            status, payload = 500, {"error": {"code": "storage_or_runtime", "message": "Request could not be completed" if self.server.portal else str(error)}}
        try:
            self.respond(status, payload)
        except (BrokenPipeError, ConnectionResetError):
            pass

    do_GET = do_POST = do_PUT = do_DELETE = dispatch


def serve(store, address="0.0.0.0", port=8080, portal=None):
    server = ThreadingHTTPServer((address, port), Handler)
    server.daemon_threads = True
    server.store = store
    server.portal = portal
    return server


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", default="/mnt/mri-data/tasks")
    parser.add_argument("--storage-mount", default="/mnt/mri-data")
    parser.add_argument("--allow-unmounted-store", action="store_true", help="explicit desktop/test or RAM-storage use")
    parser.add_argument("--runtime", default="/opt/mri/bin/mri_infer")
    parser.add_argument("--model", default="/opt/mri/models/model.bin")
    parser.add_argument("--backend", choices=("pl", "cpu"), default="pl")
    parser.add_argument("--bind", default="0.0.0.0")
    parser.add_argument("--port", type=int, default=8080)
    parser.add_argument("--portal-root", help="credential/publication directory; default sibling portal directory beside task root")
    parser.add_argument("--input-limit-mib", type=int, default=64)
    parser.add_argument("--storage-limit-mib", type=int, default=512)
    parser.add_argument("--timeout-seconds", type=int, default=86400)
    args = parser.parse_args()
    if min(args.input_limit_mib, args.storage_limit_mib, args.timeout_seconds) <= 0:
        parser.error("limits must be positive")
    if not args.allow_unmounted_store:
        mount = Path(args.storage_mount).resolve()
        if not mount.is_mount() or mount == Path(mount.anchor):
            parser.error("mount persistent MRI storage first, or explicitly use --allow-unmounted-store")
        try:
            Path(args.root).resolve().relative_to(mount)
        except ValueError:
            parser.error("task root must be inside the configured storage mount")
    # Bind first: a second invocation must not mark the first service's live task
    # interrupted merely because it subsequently discovers the port is in use.
    server = serve(None, args.bind, args.port)
    store = TaskStore(args.root, args.runtime, args.model, args.backend,
                      args.input_limit_mib * 1024**2, args.storage_limit_mib * 1024**2, args.timeout_seconds)
    server.store = store
    server.portal = PatientPortal(args.portal_root or Path(args.root).resolve().parent / 'portal')
    server.portal.configure_pairing('/run')
    pairing_stop = threading.Event()
    def pairing_updates():
        while not pairing_stop.wait(1):
            try:
                server.portal.poll_pairing_request()
            except (OSError, ValueError):
                # A failed local request does not interrupt active inference.
                pass
    threading.Thread(target=pairing_updates, daemon=True).start()
    def interrupted(signum, frame):
        raise KeyboardInterrupt()
    signal.signal(signal.SIGTERM, interrupted)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        store.stop()
    finally:
        pairing_stop.set()
        server.server_close()


if __name__ == "__main__":
    main()
