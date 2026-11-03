"""Read the Zynq die temperature without configuring hardware.

IIO ABI: temperature = (raw + offset) * scale in millidegrees Celsius.
https://docs.kernel.org/5.10/admin-guide/abi-testing.html
"""
import math
from pathlib import Path
import time


def chip_temperature(sys_root='/sys'):
    root = Path(sys_root)
    errors = []
    for device in sorted((root / 'bus/iio/devices').glob('iio:device*')):
        try:
            name = (device / 'name').read_text().strip()
            if not any(token in name.lower() for token in ('xadc', 'zynq')):
                continue
            for channel in ('in_temp0', 'in_temp'):
                raw_path = device / (channel + '_raw')
                if not raw_path.exists():
                    continue
                raw = float(raw_path.read_text())
                offset_path = device / (channel + '_offset')
                scale_path = device / (channel + '_scale')
                if not offset_path.exists():
                    offset_path = device / 'in_temp_offset'
                if not scale_path.exists():
                    scale_path = device / 'in_temp_scale'
                offset = float(offset_path.read_text()) if offset_path.exists() else 0.0
                scale = float(scale_path.read_text())
                value = (raw + offset) * scale / 1000.0
                if not all(math.isfinite(v) for v in (raw, offset, scale, value)) or scale <= 0 or not -100 <= value <= 200:
                    raise ValueError('invalid XADC temperature value')
                return dict(available=True, celsius=value, source=str(raw_path),
                            sensor=name, sampled_at=time.time())
        except (OSError, ValueError) as error:
            errors.append(str(error))
    for zone in sorted((root / 'class/thermal').glob('thermal_zone*')):
        try:
            name = (zone / 'type').read_text().strip()
            if not any(token in name.lower() for token in ('xadc', 'zynq')):
                continue
            path = zone / 'temp'
            value = float(path.read_text()) / 1000.0
            if not math.isfinite(value) or not -100 <= value <= 200:
                raise ValueError('invalid Zynq thermal value')
            return dict(available=True, celsius=value, source=str(path),
                        sensor=name, sampled_at=time.time())
        except (OSError, ValueError) as error:
            errors.append(str(error))
    return dict(available=False, celsius=None, source=None, sampled_at=time.time(),
                reason='sensor_read_failed' if errors else 'matching_sensor_unavailable')
