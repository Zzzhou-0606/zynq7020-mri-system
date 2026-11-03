"""Entry point for the frozen A169/B12/C6/S2 training recipe."""
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path[:0] = [str(HERE), str(HERE.parent)]

if __name__ == '__main__':
    from training.trainers.frozen import main
    main()
