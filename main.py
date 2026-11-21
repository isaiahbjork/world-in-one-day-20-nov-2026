"""Write the picture of Friday 20 November 2026 to /output/entry.png.

The picture is drawn ahead of time from poster.html (see render.sh) and kept in
this repository, so a run needs no network and gives the same bytes every time.
"""
import os
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = Path(os.environ.get("MAKEFUN_OUTPUT_DIR", "/output"))

PNG_MAGIC = b"\x89PNG\r\n\x1a\n"
MAX_BYTES = 1 << 20  # the contest's 1 MiB limit


def main() -> None:
    data = (HERE / "entry.png").read_bytes()
    # Fail loudly here rather than hand the gate a file it would refuse.
    if not data.startswith(PNG_MAGIC) or len(data) > MAX_BYTES:
        raise SystemExit("entry.png must be a PNG of at most 1 MiB")
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "entry.png").write_bytes(data)


if __name__ == "__main__":
    main()
