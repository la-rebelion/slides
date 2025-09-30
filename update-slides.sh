# update-slides-readme.sh
#!/usr/bin/env bash
set -e

SLIDES_DIR="$(dirname "$0")"
README="$SLIDES_DIR/README.md"
TMP_LIST="$SLIDES_DIR/.slides-list.tmp"
TMP_GTAG="$SLIDES_DIR/.gtag-script.tmp"
TMP_GTM="$SLIDES_DIR/.gtm-script.tmp"
DOMAIN="https://slides.rebelion.la"

GTAG_TRACKING_ID="G-JJJXXEZWK9"
GTM_CONTAINER_ID="GTM-W2QSRMJN"

# Create temporary script files
cat > "$TMP_GTAG" << EOF
<script async src="https://www.googletagmanager.com/gtag/js?id=${GTAG_TRACKING_ID}"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', '${GTAG_TRACKING_ID}');
</script>
EOF

cat > "$TMP_GTM" << EOF
<!-- Google Tag Manager -->
<script>
  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});
  var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
  'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
  })(window,document,'script','dataLayer','${GTM_CONTAINER_ID}');
</script>
<!-- End Google Tag Manager -->
EOF

# Function to inject GTAG and GTM scripts if not present
inject_tracking_scripts() {
  local file="$1"

  if ! grep -q "googletagmanager.com/gtag/js" "$file"; then
    awk '/<\/head>/ { system("cat '"$TMP_GTAG"'"); print; next } { print }' "$file" > "$file.tmp"
    mv "$file.tmp" "$file"
  fi

  if ! grep -q "googletagmanager.com/gtm.js" "$file"; then
    awk '/<\/head>/ { system("cat '"$TMP_GTM"'"); print; next } { print }' "$file" > "$file.tmp"
    mv "$file.tmp" "$file"
  fi
}

# Find all .html files (excluding index.html if present)
find "$SLIDES_DIR" -maxdepth 1 -type f -name '*.html' ! -name 'index.html' | grep -v "\.ignoreme" | sort | while read -r file; do
  fname=$(basename "$file")
  # Inject tracking scripts if missing
  inject_tracking_scripts "$file"
  # Generate a human-friendly title from the filename
  title=$(echo "$fname" | sed -E 's/[-_]/ /g; s/\.html$//; s/\b\w/\u&/g')
  echo "- [${title}](${DOMAIN}/${fname})"
done > "$TMP_LIST"

# Replace the SLIDES-LIST section in README.md
awk -v list="$TMP_LIST" '
  BEGIN {inlist=0}
  /<!-- SLIDES-LIST:START -->/ {print; while((getline line < list) > 0) print line; inlist=1; next}
  /<!-- SLIDES-LIST:END -->/ {inlist=0}
  !inlist
' "$README" > "$README.tmp" && mv "$README.tmp" "$README"

# Clean up temporary files
rm -f "$TMP_LIST" "$TMP_GTAG" "$TMP_GTM"
echo "README.md updated with current slide decks."