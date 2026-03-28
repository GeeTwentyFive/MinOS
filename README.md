# Features

- Minimalistic fullscreen-only window manager ([fwm](https://github.com/GeeTwentyFive/fwm))
- No mouse accel
- Terminal-based process management ([qexec](https://github.com/GeeTwentyFive/LinuxQuietExec))


# Usage

1) Install [CachyOS](https://cachyos.org/download/) with "No Desktop" selected as your desktop environment

2) `source < (curl -s https://raw.githubusercontent.com/GeeTwentyFive/MinOS/refs/heads/main/MinOS.sh)`


# Post-script usage

- Start programs with `qexec <PROGRAM>`

- Update system with `sudo pacman -Syu`

- Search for programs via `pacman -Ss <>` / `paru -Ss <>` (AUR)

- Install programs via `sudo pacman -S <>` / `paru -S <>` (AUR)

- List installed programs: `pacman -Q`

- Check various system info (battery %, CPU usage, RAM usage, disk usage, ...): `fastfetch`

- Get current date and time: `time`

- Manage audio: `alsamixer`

- Search for file/dir: `find <SEARCH_BASE_DIR> -name <TARGET_NAME>`

- List running processes: `pstree`

- Get/set power profile: `powerprofilesctl`

- Change keyboard language: `setxkbmap -layout <>`

- Connect/disconnect to/from Wi-Fi network: `nmtui`

- Configure input devices: `xinput`

- Learn what program/command does via `tldr <>`

- For more info check [CachyOS wiki](https://wiki.cachyos.org/), if no answer/info found then [Arch wiki](https://wiki.archlinux.org/title/Main_page)


# Additional software recommendations

- Browser: `paru -S helium-browser-bin`

- Code/text editor: `paru -S visual-studio-code-bin`

- Audio editor: `sudo pacman -S audacity`

- 3D modeler: `sudo pacman -S blender`

- Music player: `sudo pacman -S cmus`

- 3D CAD modeler: `sudo pacman -S freecad`

- Software-reverse-engineering tool: `sudo pacman -S ghidra`

- Image editor: `sudo pacman -S gimp`

- Game engine: `sudo pacman -S godot`

- Vector graphics (SVG) editor: `sudo pacman -S inkscape`

- Video editor: `sudo pacman -S kdenlive`

- Music creator (Digital Audio Workstation): `sudo pacman -S lmms`

- Video player: `sudo pacman -S mpv`
