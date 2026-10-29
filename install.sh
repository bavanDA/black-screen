#!/usr/bin/env bash
# Install Black Screen for the current user. Run: bash install.sh   (remove: bash install.sh uninstall)
set -euo pipefail

BIN=$HOME/.local/bin/black-screen
DESKTOP=$HOME/.local/share/applications/black-screen.desktop

if [ "${1:-}" = uninstall ]; then
  rm -f "$BIN" "$DESKTOP"
  echo "Black Screen removed."
  exit 0
fi

mkdir -p "$(dirname "$BIN")" "$(dirname "$DESKTOP")"
install -m 755 "$(dirname "$0")/black-screen" "$BIN"
cat > "$DESKTOP" <<EOF
[Desktop Entry]
Type=Application
Name=Black Screen
Comment=Lock and turn off the screen and keyboard light, laptop keeps running
Exec=$BIN
Icon=video-display
Terminal=false
Categories=Utility;
EOF
echo "Installed. Open \"Black Screen\" from your apps."
