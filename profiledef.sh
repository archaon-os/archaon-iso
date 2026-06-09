#!/usr/bin/env bash
iso_name="archaon"
iso_label="ARCHAON_$(date +%Y%m)"
iso_publisher="Archaon OS <https://github.com/archaon-os>"
iso_application="Archaon OS - Privacy | Dev | Aesthetic"
iso_version="1.0.0"
iso_install_dir="arch"
iso_startup_files=()
iso_build_dir="${TMPDIR:-/tmp}/archiso"
iso_output_dir="out"
bootmodes=('bios.syslinux' 'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/local/bin/archaon-install"]="0:0:755"
)
