"""Local HTML desktop shell; Tk remains available through --ui tk."""
from pathlib import Path
import threading

from host.ui.web_bridge import WebBridge
from host.paths import portable_root


def launch(store):
    try:
        import webview
    except ImportError as error:
        raise SystemExit('WebUI 需要 pywebview。请运行 python -m pip install -r host/requirements-webui.txt；'
                         '原界面可用 python -m host.app --ui tk 启动。') from error
    api = WebBridge(store)
    portable = portable_root()
    if portable:
        import json
        config = json.loads((portable / 'portable.json').read_text(encoding='utf-8'))
        webview.settings['WEBVIEW2_RUNTIME_PATH'] = str(portable / config['webview2'])
    # Preferences are stored by Python, so the local asset server needs no
    # fixed origin/port. Avoid conflicts with other WebView desktop programs.
    webview.settings['DEFAULT_HTTP_PORT'] = None
    window = webview.create_window('MRI 工作台', str(Path(__file__).with_name('web') / 'index.html'),
        js_api=api, width=1320, height=880, min_size=(900, 640), background_color='#f3f6fb', text_select=True)
    api._window = window
    close_state = {'pending': False, 'ready': False}
    def closing():
        if close_state['ready']:
            return True
        with api._lock:
            busy = api._busy
            if not busy:
                api._closing = True
        if busy:
            # WinForms closing runs on the UI thread. JS evaluation must run
            # elsewhere, since its completion also needs that thread.
            threading.Thread(target=lambda: window.evaluate_js(
                "window.showToast('任务正在运行，完成后可关闭窗口。', true)"), daemon=True).start()
            return False
        if not window.events.loaded.is_set():
            return True
        if not close_state['pending']:
            close_state['pending'] = True
            def flush_and_close():
                try:
                    address = window.evaluate_js("document.getElementById('address').value")
                    api.save_address(address)
                finally:
                    close_state['ready'] = True
                    window.destroy()
            threading.Thread(target=flush_and_close, daemon=True).start()
        return False
    window.events.closing += closing
    # Explicitly require the modern renderer, never silently fall back to IE.
    webview.start(gui='edgechromium', private_mode=False, storage_path=str(store.root / 'webview-profile'))
