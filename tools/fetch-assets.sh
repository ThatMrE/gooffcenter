#!/usr/bin/env bash
# Download the landing page's photography from Wikimedia Commons into assets/.
#
# The images are CC-licensed but hotlinking Commons in production is fragile
# and impolite, so they get vendored into the repo. Run this once from a
# machine with access to commons.wikimedia.org, then commit assets/.
#
#   ./tools/fetch-assets.sh
#
# Licences and source pages: see assets/CREDITS.md.

set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p assets

BASE="https://commons.wikimedia.org/wiki/Special:FilePath"
WIDTH=1600

# local name <TAB> Commons file name
FILES=$(cat <<'EOF'
hero-poster	Burning Man aerial.jpg
lots-today	Central Park SummerStage, Manhattan, New York, US.jpg
building	Yona Appletree's Dome (14960329318).jpg
night-show	Musicians performing on stage at a night concert featuring vibrant lights and energetic atmosphere.jpg
build-crew	Burning Man 2013 The Church Trap! (9657159731).jpg
EOF
)

while IFS=$'\t' read -r name file; do
  [ -n "$name" ] || continue
  encoded=$(printf '%s' "$file" | od -An -tx1 -v | tr -d '\n ' | sed 's/../%&/g')
  out="assets/${name}.jpg"
  printf 'fetching %-12s -> %s\n' "$name" "$out"
  curl -fsSL --retry 3 --retry-delay 2 "${BASE}/${encoded}?width=${WIDTH}" -o "$out"
done <<< "$FILES"

echo
echo "Done. Now point index.html at the local files:"
echo "  sed -i'' -E 's#https://commons\.wikimedia\.org/wiki/Special:FilePath/[^\"]*#assets/PLACEHOLDER.jpg#g' index.html"
echo "(or ask Claude to do the swap, which also keeps each credit line with its image)"
ls -la assets/
