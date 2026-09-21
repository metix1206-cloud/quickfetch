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

## Usage

```bash
quickfetch              # automatic distro detection
quickfetch --logo arch  # manually set the logo
```

## Features

- Automatic detection of distro, package manager, and package count (pacman / dpkg / rpm)
- CPU, RAM, disk, uptime, local & public IP
- ASCII logo matching the detected distro
- Live-update mode (refreshes automatically)

## Known limitations (Beta)

- Resolution display on Wayland only works with `wlr-randr`-compatible compositors (e.g. Sway, Hyprland) – not currently supported on GNOME/KDE
- Battery display assumes `/sys/class/power_supply/BAT0/`; won't work with a different naming (e.g. `BAT1`) or on desktop PCs without a battery

## Credits

The ASCII logos in `assets_quickfetch/` are taken from the [fastfetch](https://github.com/fastfetch-cli/fastfetch) project by Linus Dierheimer and Carter Li, licensed under the MIT License (see `assets_quickfetch/LICENSE`).

## License

This project is licensed under the MIT License, see [LICENSE](LICENSE).

## Updates

- Refined Bars

## Fixes

No new fixes
