# archaon-iso 🐦‍⬛

> The ISO build profile for Archaon OS.

This repository contains everything needed to build a bootable Archaon OS ISO from scratch using `archiso`.

---

## Contents

| File/Folder | Purpose |
|-------------|---------|
| `profiledef.sh` | ISO identity and build settings |
| `packages.x86_64` | Package list |
| `airootfs/` | Files copied into the live system |
| `grub/` | GRUB bootloader config |
| `syslinux/` | SYSLINUX bootloader config |
| `efiboot/` | EFI boot entries |

---

## Building

Requirements:
- Arch Linux or Arch-based system
- archiso installed
- 15GB+ free disk space

Build the ISO:

    sudo pacman -S archiso
    git clone https://github.com/archaon-os/archaon-iso.git
    cd archaon-iso
    sudo mkarchiso -v -w ~/archaon-work -o out .

Output will be at:

    out/archaon-1.0.0-chaotic-crow-x86_64.iso

---

## Flashing

Using Ventoy (recommended):

    # Copy ISO to Ventoy USB
    cp out/archaon-*.iso /path/to/ventoy/

Using dd:

    sudo dd if=out/archaon-*.iso of=/dev/sdX bs=4M status=progress

---

## Customizing

**Add packages** — Edit `packages.x86_64`

**Edit default configs** — Edit files in `airootfs/etc/skel/`

**Change branding** — Edit `profiledef.sh`

**Rebuild:**

    sudo rm -rf ~/archaon-work out
    sudo mkarchiso -v -w ~/archaon-work -o out .

---

## Related Repos

| Repo | Purpose |
|------|---------|
| [archaon-os](https://github.com/archaon-os/archaon-os) | Main repo |
| [archaon-branding](https://github.com/archaon-os/archaon-branding) | Dotfiles and assets |
| [archaon-aon](https://github.com/archaon-os/archaon-aon) | Package manager |

---

## License

GPL v3 — see LICENSE file.

---

**Archaon OS — 1.0.0 "Chaotic Crow" 🐦‍⬛**
