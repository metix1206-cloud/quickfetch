#!/bin/bash
# install.sh – installiert quickfetch nach ~/.local/bin

set -e

INSTALL_DIR="$HOME/.local/bin"
ASSETS_DIR="$INSTALL_DIR/assets_quickfetch"
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

echo "Installing quickfetch to $INSTALL_DIR..."

mkdir -p "$INSTALL_DIR"

cp "$SCRIPT_DIR/quickfetch" "$INSTALL_DIR/quickfetch"
chmod +x "$INSTALL_DIR/quickfetch"

cp -r "$SCRIPT_DIR/assets_quickfetch" "$ASSETS_DIR"

echo "quickfetch installed"

# Check if ~/.local/bin in PATH ist
case ":$PATH:" in
    *":$INSTALL_DIR:"*)
        echo "PATH is already finished."
        ;;
    *)
        echo ""
        echo "Warning: $INSTALL_DIR isn't in your PATH-Variable."
        echo "Copying following line to your ~/.bashrc (or ~/.zshrc):"
        echo ""
        echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
        echo ""
        echo "Then: source ~/.bashrc"
        ;;
esac

echo ""
echo "Finished! start quickfetch with: quickfetch"
