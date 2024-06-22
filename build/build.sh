#!/bin/sh
set -e

mkdir /grub-efi
cd /grub-efi
wget https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/APKINDEX.tar.gz
tar -zxf APKINDEX.tar.gz
version=$(grep -A 1 "P:grub-efi" APKINDEX | grep "^V:" | awk -F: '{print $2}')
wget https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/grub-efi-${version}.apk -O grub-efi.tar.gz
tar --strip-components=3 -zxf grub-efi.tar.gz usr/lib/grub/i386-efi -C /usr/lib/grub

cd /archiso
make PREFIX=/usr install
cd /lingmo-archiso-build
mkarchiso -v . -o /out
