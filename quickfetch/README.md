# quickfetch

> ⚠️ **Alpha-Version** – funktioniert grundlegend, aber einige Features (z. B. Auflösungsanzeige unter Wayland) sind noch unvollständig oder nur für bestimmte Compositors getestet.

Ein einfaches, in Bash geschriebenes System-Info-Tool im Stil von `fastfetch`/`neofetch`. Zeigt System-, Hardware- und Sitzungsinformationen zusammen mit einem passenden ASCII-Logo an.

## Vorschau

```
                  -`                    metix@arch-btw
                 .o+`                   -------------
                `ooo/                   SOFTWARE-INFO
               `+oooo:                      --  Kernel:            7.1.5-arch1-2
              `+oooooo:                     --  OS:                Arch Linux
              -+oooooo+:                    --  Shell:             /bin/bash
            `/:-:++oooo+:                   ...
```

## Installation

```bash
git clone https://github.com/DEIN_NAME/quickfetch.git
cd quickfetch
chmod +x install.sh
./install.sh
```

Das Installationsskript kopiert `quickfetch` und die Logo-Assets nach `~/.local/bin` und prüft, ob dieser Ordner in deiner `PATH`-Variable eingetragen ist.

Danach einfach:

```bash
quickfetch
```

## Nutzung

```bash
quickfetch              # automatische Distro-Erkennung
quickfetch --logo arch  # Logo manuell festlegen
```

## Features

- Automatische Erkennung von Distro, Paketmanager und Paketanzahl (pacman / dpkg / rpm)
- CPU, RAM, Disk, Uptime, lokale & öffentliche IP
- ASCII-Logo passend zur erkannten Distro
- Live-Update-Modus (aktualisiert sich automatisch)

## Bekannte Einschränkungen (Alpha)

- Auflösungsanzeige unter Wayland funktioniert nur mit `wlr-randr`-kompatiblen Compositors (z. B. Sway, Hyprland) – bei GNOME/KDE aktuell nicht unterstützt
- Akkuanzeige geht von `/sys/class/power_supply/BAT0/` aus; bei abweichender Bezeichnung (z. B. `BAT1`) oder Desktop-PCs ohne Akku funktioniert das nicht

## Credits

Die ASCII-Logos in `assets_quickfetch/` stammen aus dem Projekt [fastfetch](https://github.com/fastfetch-cli/fastfetch) von Linus Dierheimer und Carter Li, lizenziert unter der MIT-Lizenz (siehe `assets_quickfetch/LICENSE`).

## Lizenz

Dieses Projekt steht unter der MIT-Lizenz, siehe [LICENSE](LICENSE).
