#!/bin/sh
# Draw poster.html at 1024 x 1024 with headless Chrome and save it as entry.png.
# Run on the build machine only; main.py just copies the finished picture.
set -eu
cd "$(dirname "$0")"

CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
RAW="${TMPDIR:-/tmp}/poster-raw.png"

"$CHROME" --headless=new --disable-gpu --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1024,1024 \
  --default-background-color=F6F1E7FF \
  --screenshot="$RAW" "file://$PWD/poster.html" >/dev/null 2>&1

# Re-save without metadata so the file is small and the same on every build.
python3 - "$RAW" entry.png <<'PY'
import sys
from PIL import Image

src, dst = sys.argv[1], sys.argv[2]
im = Image.open(src).convert("RGB")
assert im.size == (1024, 1024), im.size
im.save(dst, "PNG", optimize=True)
print(dst, im.size)
PY
