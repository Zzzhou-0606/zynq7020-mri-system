"""Copied decoder for official OASIS-1 SUBJ_111 only, not arbitrary Analyze.

Uses the established scanner transform; never apply it to the T88 volume.
"""
import io
import tarfile
from pathlib import Path
from typing import Any
import numpy as np
import nibabel as nib

NATIVE_AFFINE = np.array([[0, 0, -1, 80], [1, 0, 0, -128],
                          [0, 1, 0, -128], [0, 0, 0, 1]], dtype=float)

NATIVE_SHAPE = (256, 256, 160)

def native_array(header_bytes, image_bytes):
    """Decode the official big-endian Analyze pair without trusting its affine."""
    file_map = {
        "header": nib.FileHolder(fileobj=io.BytesIO(header_bytes)),
        "image": nib.FileHolder(fileobj=io.BytesIO(image_bytes)),
        # No SPM .mat sidecar is present in the official SUBJ_111 archives.
        "mat": nib.FileHolder(fileobj=io.BytesIO()),
    }
    # nib.load(.img) in the published converter uses Spm2AnalyzeImage, whose
    # optional intensity scaling must be honored even though its affine is not.
    image = nib.Spm2AnalyzeImage.from_file_map(file_map)
    array = np.asarray(image.dataobj).squeeze()
    if array.shape != NATIVE_SHAPE or not np.isfinite(array).all():
        raise ValueError("Unexpected SUBJ_111 image shape or nonfinite intensities")
    if not np.allclose(image.header.get_zooms()[:3], (1, 1, 1)):
        raise ValueError("SUBJ_111 spacing is not 1 mm")
    # This is the rounding used by the published OASIS-to-BIDS converter.
    array = np.round(array).astype(np.float32)
    if array.min() < 0 or array.max() > 32767 or not np.ptp(array):
        raise ValueError("Unexpected SUBJ_111 signed-int16 intensity range")
    return array

def archive_subjects(path, wanted):
    """Yield each selected native average once; no full-volume disk extraction."""
    pieces = {}
    yielded = set()
    with tarfile.open(path, "r|gz") as archive:
        for member in archive:
            parts = Path(member.name).parts
            if (not member.isfile() or len(parts) < 6 or parts[1] not in wanted
                    or "/PROCESSED/MPRAGE/SUBJ_111/" not in member.name
                    or not member.name.endswith((".hdr", ".img"))):
                continue
            sid = parts[1]
            row = pieces.setdefault(sid, {})
            extension = Path(member.name).suffix
            if extension in row:
                raise ValueError(f"Multiple SUBJ_111 image pairs for {sid}")
            row[extension] = archive.extractfile(member).read()
            row[extension + "_source"] = member.name
            if ".hdr" in row and ".img" in row:
                array = native_array(row[".hdr"], row[".img"])
                source = dict(archive=str(path.resolve()), header=row[".hdr_source"],
                              image=row[".img_source"])
                del pieces[sid]
                if sid in yielded:
                    raise ValueError(f"Repeated native image pair for {sid}")
                yielded.add(sid)
                yield wanted[sid], sid, array, source
                if yielded == set(wanted):
                    return
    if pieces:
        raise ValueError(f"Incomplete native image pairs: {sorted(pieces)}")

def validate_nifti(path: Path, expected_array: np.ndarray | None = None) -> dict[str, Any]:
    image = nib.load(path)
    array = np.asanyarray(image.dataobj)
    if image.shape != NATIVE_SHAPE or array.dtype != np.dtype("int16"):
        raise ValueError(f"Wrong native input shape/dtype: {path}")
    if not np.array_equal(image.affine, NATIVE_AFFINE):
        raise ValueError(f"Wrong scanner affine: {path}")
    if not np.array_equal(image.header.get_zooms(), (1, 1, 1)):
        raise ValueError(f"Wrong scanner spacing: {path}")
    if int(image.header["qform_code"]) != 1 or int(image.header["sform_code"]) != 1:
        raise ValueError(f"Native qform/sform must identify scanner geometry: {path}")
    if image.header.get_xyzt_units()[0] != "mm":
        raise ValueError(f"Spatial units must be millimeters: {path}")
    if not np.isfinite(array).all() or array.min() < 0 or not np.ptp(array):
        raise ValueError(f"Invalid native input values: {path}")
    if expected_array is not None and not np.array_equal(array, expected_array):
        raise ValueError(f"Saved MRI differs from the decoded source: {path}")
    return {
        "shape": list(image.shape),
        "spacing_mm": [float(value) for value in image.header.get_zooms()],
        "affine_ras": image.affine.tolist(),
        "axis_codes": list(nib.aff2axcodes(image.affine)),
        "qform_code": int(image.header["qform_code"]),
        "sform_code": int(image.header["sform_code"]),
        "spatial_units": "mm",
        "dtype": str(array.dtype),
        "finite": True,
        "minimum": int(array.min()),
        "maximum": int(array.max()),
        "source_array_exactly_preserved": expected_array is not None,
    }
