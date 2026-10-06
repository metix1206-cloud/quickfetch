#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"
ASSETS_DIR="$INSTALL_DIR/assets_quickfetch"

read -p "Do you really wan't to uninstall quickfetch? [y/N] " confirm
if [ "$confirm" != "y" ]; then
	echo "cancled."
	exit 0
fi

if [ -f "$INSTALL_DIR/quickfetch" ]; then
	rm "$INSTALL_DIR/quickfetch"
	echo "quickfetch removed."
else
	echo "quickfetch wasn't installed."
	echo "nothing to remove"
fi

if [ -d "$ASSETS_DIR" ]; then
	rm -r "$ASSETS_DIR"
	echo "assets removed."
else
	echo "assets wasn't installed."
	echo "nothing to remove"
fi
