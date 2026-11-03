"""Launch the doctor client from the repository root: python -m host.app."""
import argparse
from pathlib import Path
from host.cases.store import CaseStore
from host.paths import default_cases


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--data-root',type=Path,default=default_cases())
    parser.add_argument('--ui', choices=('web', 'tk'), default='web', help='WebUI desktop (default) or original Tk interface')
    args = parser.parse_args()
    store = CaseStore(args.data_root)
    if args.ui == 'web':
        from host.ui.web_desktop import launch
        launch(store)
        return
    import tkinter as tk
    from host.ui.desktop import Desktop
    root = tk.Tk()
    Desktop(root,store)
    root.mainloop()


if __name__ == '__main__':
    main()
