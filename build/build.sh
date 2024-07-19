#!/bin/sh
set -e

cat>/usr/share/grub/sbat.csv<<EOF
sbat,1,SBAT Version,sbat,1,https://github.com/rhboot/shim/blob/main/SBAT.md
grub,3,Free Software Foundation,grub,2:2.12-2,https//www.gnu.org/software/grub/
grub.arch,1,Arch Linux,grub,2:2.12-2,https://archlinux.org/packages/core/x86_64/grub/
EOF

cd /archiso
make PREFIX=/usr install
cd /lingmo-archiso-build
mkarchiso -v . -o /out
