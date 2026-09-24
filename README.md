# quickfetch

> ⚠️ **BETA version** – works, but some features (e.g. resolution display on Wayland) are still incomplete or only tested on certain compositors.

A simple system info tool written in Bash, in the style of `fastfetch`/`neofetch`. Displays system, hardware, and session information alongside a matching ASCII logo.

## Preview

              -`                    metix@arch-btw
             .o+`                   -------------
            `ooo/                   SOFTWARE-INFO
           `+oooo:                      --  Kernel:            7.1.5-arch1-2
          `+oooooo:                     --  OS:                Arch Linux
          -+oooooo+:                    --  Shell:             /bin/bash
        `/:-:++oooo+:                   ...

## Installation

```bash
git clone https://github.com/YOUR_NAME/quickfetch.git
cd quickfetch (or quickfetch/quickfetch)
chmod +x install.sh
./install.sh
```

The install script copies `quickfetch` and the logo assets to `~/.local/bin` and checks whether that folder is included in your `PATH` variable.

Then simply run:

```bash
quickfetch
```

## Uninstallation
bash

bash uninstall.sh

Asks for confirmation, then removes quickfetch and its assets from ~/.local/bin.

## Usage

```bash
quickfetch			# automatic distro detection
quickfetch --logo arch		# manually set the logo
quickfetch --logo list		# list all available logo names
quickfetch --once		# show info once and exit, no live updates
quickfetch --intervall 5	# set the update interval in seconds (default: 1)
quickfetch --no-color		# disable colored output
quickfetch --help		# show usage information
```

## Features

- Automatic distro detection with the matching original logo color (540+ distros supported, colors sourced from fastfetch)
- Live progress bars for RAM, disk, and battery usage
- Automatic detection of installed package managers and package counts (pacman, dnf, apt, dpkg, flatpak, zypper)
- Local and public IP detection with IPv4/IPv6 fallback chain
- Battery and AC-adapter status, auto-detected (not hardcoded to BAT0/AC)
- Screen resolution detection for both X11 (xrandr) and Wayland (wlr-randr, kscreen-doctor)
- Live-update mode with adjustable interval, press q to quit at any time

## Known limitations (Beta)

- Resolution detection on Wayland works with wlr-randr-compatible compositors (e.g. Sway, Hyprland) and KDE (kscreen-doctor); GNOME Wayland is not yet supported
- A handful of logos using 256-color or RGB color codes fall back to a default color instead of their exact original shade

## Credits

The ASCII logos in `assets_quickfetch/` are taken from the [fastfetch](https://github.com/fastfetch-cli/fastfetch) project by Linus Dierheimer and Carter Li, licensed under the MIT License (see `assets_quickfetch/LICENSE`).

## License

This project is licensed under the MIT License, see [LICENSE](LICENSE).

## Updates

- added an "uninstall.sh"
- more flags

## Fixes

- Battery-type
