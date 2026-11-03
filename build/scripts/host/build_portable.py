"""Build a folder distribution without installing or changing project packages."""
import argparse
import importlib.metadata as metadata
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
from packaging.requirements import Requirement
from packaging.utils import canonicalize_name

PROJECT = Path(__file__).resolve().parents[3]
SOURCE = PROJECT / 'src'
SCRIPTS = Path(__file__).resolve().parent
SKIP = {'__pycache__', '.git', '.pytest_cache'}
DEPENDENCY_DOC_EXCLUDES = {
    'pyparsing/ai/best_practices.md',
    'torchgen/packaged/autograd/README.md',
}


def copy_tree(source, target, extra_skip=()):
    shutil.copytree(source, target, dirs_exist_ok=True,
                    ignore=shutil.ignore_patterns(*(SKIP | set(extra_skip)), '*.pyc'))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--webview-cab', type=Path, required=True)
    parser.add_argument('--webview-version', required=True)
    parser.add_argument('--vc-runtime-dir', type=Path, default=Path(os.environ['WINDIR'])/'System32',
                        help='Directory containing the installed x64 Microsoft VC redistributable DLLs')
    args = parser.parse_args()
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=False)
    runtime, app = output / 'runtime', output / 'runtime/app'
    runtime.mkdir(); app.mkdir()
    base = Path(sys.base_prefix)
    for name in ('python.exe','pythonw.exe','python3.dll','python312.dll','vcruntime140.dll','vcruntime140_1.dll','LICENSE.txt'):
        shutil.copy2(base/name, runtime/name)
    copy_tree(base/'DLLs', runtime/'DLLs')
    copy_tree(base/'Lib', runtime/'Lib', ('site-packages','test','idlelib','ensurepip'))
    copy_tree(base/'tcl', runtime/'tcl')
    # App-local redistributable runtime: target PCs need no VC++ installer.
    for name in ('msvcp140.dll','msvcp140_1.dll','msvcp140_2.dll','msvcp140_atomic_wait.dll',
                 'msvcp140_codecvt_ids.dll','vcruntime140.dll','vcruntime140_1.dll','concrt140.dll'):
        shutil.copy2(args.vc_runtime_dir/name, runtime/name)
    roots = ['pywebview','numpy','scipy','nibabel','pillow','torch','torchvision','pandas',
             'scikit-image','yacs','PyYAML','tqdm','requests','h5py','matplotlib','setuptools']
    selected = {}
    while roots:
        name = canonicalize_name(roots.pop())
        if name in selected: continue
        dist = metadata.distribution(name)
        selected[name] = dist
        for raw in dist.requires or []:
            req = Requirement(raw)
            if req.marker is None or req.marker.evaluate({'extra':''}):
                roots.append(req.name)
    site = Path(sys.prefix)/'Lib/site-packages'
    dest_site = runtime/'Lib/site-packages'; dest_site.mkdir(exist_ok=True)
    for name, dist in selected.items():
        print('Copy dependency', name, dist.version, flush=True)
        for item in dist.files or []:
            src = Path(dist.locate_file(item)).resolve()
            try: rel = src.relative_to(site.resolve())
            except ValueError: continue
            if not src.is_file() or '__pycache__' in rel.parts or src.suffix == '.pyc': continue
            if rel.as_posix() in DEPENDENCY_DOC_EXCLUDES: continue
            dst = dest_site/rel; dst.parent.mkdir(parents=True,exist_ok=True); shutil.copy2(src,dst)
    # Allowlisted application trees: never copy data, experiments or manifests
    # containing person-level validation evidence into the distribution.
    copy_tree(SOURCE/'host', app/'host', ('tests','vendor','packaging','*.md'))
    (app/'host/packaging').mkdir()
    for name in ('bootstrap.py',):
        shutil.copy2(SCRIPTS/name, app/'host/packaging'/name)
    for tree in ('training/models','training/reference','training/data_pipeline'):
        copy_tree(SOURCE/'model'/tree, app/tree, ('*.md',))
    for tree in ('shared/protocol','shared/model_contract','shared/schemas'):
        copy_tree(SOURCE/tree,app/tree,('*.md',))
    vendor = SOURCE/'segmentation/fastsurfer'
    vendor_out = app/'host/segmentation/vendor/FastSurfer'
    vendor_out.mkdir(parents=True)
    for tree in ('FastSurferCNN','CerebNet','HypVINN'):
        copy_tree(vendor/tree,vendor_out/tree,('checkpoints','tests','test'))
    for name in ('LICENSE','NOTICE','notice.txt','pyproject.toml','BUILD.info'):
        if (vendor/name).is_file(): shutil.copy2(vendor/name,vendor_out/name)
    seg = output/'models/FastSurfer';seg.mkdir(parents=True)
    for plane in ('axial','coronal','sagittal'):
        name='aparc_vinn_'+plane+'_v2.0.0.pkl';shutil.copy2(PROJECT/'data/models/segmentation'/name,seg/name)
    contract=json.loads((SOURCE/'shared/model_contract/system_frozen_20261022.json').read_text())
    weight_sources = dict(zip([*(contract['weights'][k] for k in 'abcs'), contract['encoder']],
        ['axial_cnn_epoch169.pt', 'coronal_head_epoch12.pt', 'sagittal_head_epoch6.pt',
         'severity_head_epoch2.pt', 'resnet18_imagenet_backbone.pt']))
    for rel in [*contract['weights'].values(),contract['encoder']]:
        dst=output/'models/classification'/rel;dst.parent.mkdir(parents=True,exist_ok=True)
        shutil.copy2(PROJECT/'data/models/classification'/weight_sources[rel],dst)
    (runtime/'python312._pth').write_text('\n'.join(['DLLs','Lib','Lib/site-packages','app','app/host/segmentation/vendor/FastSurfer','import site','']),encoding='utf-8')
    browser=runtime/'webview2';browser.mkdir()
    subprocess.run(['expand.exe',str(args.webview_cab.resolve()),'-F:*',str(browser)],check=True,stdout=subprocess.DEVNULL)
    exe=next(browser.rglob('msedgewebview2.exe'))
    (output/'portable.json').write_text(json.dumps({'format':1,'python':sys.version.split()[0],
        'webview2':exe.parent.relative_to(output).as_posix(),'webview2_version':args.webview_version,
        'dependencies':{n:d.version for n,d in sorted(selected.items())}},indent=2),encoding='utf-8')
    for name in ('cases','settings','logs','exports'):(output/'data'/name).mkdir(parents=True)
    for name in ('usage.md', 'third_party_components.md'):
        shutil.copy2(PROJECT/'build/release/host'/name, output/name)
    shutil.copy2(PROJECT/'license.txt', output/'license.txt')
    compiler=Path(os.environ['WINDIR'])/'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
    subprocess.run([str(compiler),'/nologo','/target:winexe','/platform:x64','/utf8output',
        '/reference:System.Windows.Forms.dll','/out:'+str(output/'mri_workstation.exe'),str(SCRIPTS/'launcher.cs')],check=True)
    print('BUILT',output,flush=True)


if __name__=='__main__':main()
