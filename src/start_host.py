"""Launch the delivered source using an existing Python environment."""
from pathlib import Path
import sys
HERE = Path(__file__).resolve().parent
sys.path[:0] = [str(HERE), str(HERE / 'model')]
from host.app import main
if __name__ == '__main__':
    main()
