"""Read-only dependency/model diagnostics with an optional synthetic reference run."""
import argparse
import json
from pathlib import Path
import sys


def main():
    import faulthandler
    faulthandler.dump_traceback_later(120, repeat=True)
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--reference',action='store_true')
    args=parser.parse_args()
    import numpy as np
    print('Loading runtime libraries', flush=True)
    import torch, torchvision, scipy, nibabel, webview, tkinter
    from host.paths import portable_root,default_cases,segmentation_weights,classification_bundle
    import FastSurferCNN.run_prediction
    from host.workflows.analysis import segmentation_model_identity
    from training.reference.frozen_hierarchy import FrozenHierarchy
    print('Loading bundled models', flush=True)
    root=portable_root()
    assert root is not None
    assert all(Path(p).resolve().is_relative_to(root) for p in sys.path if p)
    assert all(Path(m.__file__).resolve().is_relative_to(root) for m in (np,torch,torchvision,scipy,nibabel,webview))
    assert len(segmentation_model_identity())==3
    model=FrozenHierarchy('cpu')
    print('Checking Tcl and CUDA', flush=True)
    tcl_version = tkinter.Tcl().eval('info patchlevel')
    report=dict(portable_root=str(root),python=sys.version,executable=sys.executable,sys_path=sys.path,
                cuda_available=torch.cuda.is_available(),default_cases=str(default_cases()),
                segmentation_weights=str(segmentation_weights()),classification_bundle=str(classification_bundle()),
                model_load=True,imports=True,tcl_version=tcl_version)
    if torch.cuda.is_available():
        x=torch.ones((16,16),device='cuda');assert (x@x).sum().item()==4096
        report['cuda_tensor_check']=True
    if sys.platform == 'win32':
        import ctypes
        from ctypes import wintypes
        kernel = ctypes.WinDLL('kernel32', use_last_error=True)
        kernel.GetModuleHandleW.argtypes = [wintypes.LPCWSTR]
        kernel.GetModuleHandleW.restype = wintypes.HMODULE
        kernel.GetModuleFileNameW.argtypes = [wintypes.HMODULE, wintypes.LPWSTR, wintypes.DWORD]
        kernel.GetModuleFileNameW.restype = wintypes.DWORD
        report['loaded_cpp_runtime'] = {}
        for name in ('msvcp140.dll', 'vcruntime140.dll', 'vcruntime140_1.dll'):
            handle = kernel.GetModuleHandleW(name)
            assert handle, name + ' was not loaded'
            filename = ctypes.create_unicode_buffer(32768)
            assert kernel.GetModuleFileNameW(handle, filename, len(filename))
            assert Path(filename.value).resolve().is_relative_to(root), filename.value
            report['loaded_cpp_runtime'][name] = filename.value
    if args.reference:
        print('Running synthetic CPU reference', flush=True)
        volume=np.broadcast_to(np.arange(176,dtype=np.float32)[:,None,None],(176,208,176)).copy()
        mask=np.ones(volume.shape,dtype=np.uint8)
        torch.set_num_threads(4)
        result=model.predict_volume(volume,mask)
        assert np.isfinite(result['score'])
        report['synthetic_reference_result']=result
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(report,indent=2),encoding='utf-8')
    faulthandler.cancel_dump_traceback_later()
    print(json.dumps({'imports':True,'model_load':True,'cuda_available':report['cuda_available']}))


if __name__=='__main__':main()
