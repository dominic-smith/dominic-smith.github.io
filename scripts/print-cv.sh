#!/usr/bin/env bash
# Print the built CV page (_site/cv/print/) to the PDF the site links to.
# Run after `jekyll build`. The deploy workflow runs this on every push, so the
# CV PDF always reflects _papers/ and _data/cv.yml — never edit the PDF by hand.
set -euo pipefail
cd "$(dirname "$0")/.."

src="_site/cv/print/index.html"
out="_site/assets/cv/dominic_smith_cv.pdf"
[ -f "$src" ] || { echo "missing $src — run jekyll build first" >&2; exit 1; }

chrome=""
for c in google-chrome google-chrome-stable chromium chromium-browser \
         "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"; do
  if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then chrome="$c"; break; fi
done
[ -n "$chrome" ] || { echo "no Chrome/Chromium found" >&2; exit 1; }

mkdir -p "$(dirname "$out")"
# virtual-time-budget gives the Arimo webfont time to load before printing.
"$chrome" --headless=new --disable-gpu --no-sandbox --no-pdf-header-footer \
  --run-all-compositor-stages-before-draw --virtual-time-budget=15000 \
  --print-to-pdf="$out" "file://$PWD/$src" 2>/dev/null

[ -s "$out" ] || { echo "PDF was not produced" >&2; exit 1; }
echo "wrote $out"
