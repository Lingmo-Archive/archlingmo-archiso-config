#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="lingmoos"
iso_label="LINGMO_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="LingmoOS Team <https://lingmo.org>"
iso_application="LingmoOS Live/Rescue DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="lingmo"
buildmodes=('iso')
bootmodes=('uefi-x64.grub.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'zstd')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/sudoers.d"]="0:0:750"
)
