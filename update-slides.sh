# update-slides-readme.sh
#!/usr/bin/env bash
set -e

SLIDES_DIR="$(dirname "$0")"
README="$SLIDES_DIR/README.md"
TMP_LIST="$SLIDES_DIR/.slides-list.tmp"

# Find all .html files (excluding index.html if present)
find "$SLIDES_DIR" -maxdepth 1 -type f -name '*.html' ! -name 'index.html' | sort | while read -r file; do
  fname=$(basename "$file")
  # Generate a human-friendly title from the filename
  title=$(echo "$fname" | sed -E 's/[-_]/ /g; s/\.html$//; s/\b\w/\u&/g')
  echo "- [${title}](${fname})"
done > "$TMP_LIST"

# Replace the SLIDES-LIST section in README.md
awk -v list="$TMP_LIST" '
  BEGIN {inlist=0}
  /<!-- SLIDES-LIST:START -->/ {print; while((getline line < list) > 0) print line; inlist=1; next}
  /<!-- SLIDES-LIST:END -->/ {inlist=0}
  !inlist
' "$README" > "$README.tmp" && mv "$README.tmp" "$README"

rm "$TMP_LIST"
echo "README.md updated with current slide decks."