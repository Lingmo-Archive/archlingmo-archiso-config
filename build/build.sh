#!/bin/sh
set -e

cat<<EOF

                   _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                   O\ = /O
               ____/---'\____
             .   ' \\| |// .
              / \\||| : |||// \
            / _||||| -:- |||||- \
              | | \\\ - /// | |
            | \_| ''\---/'' | |
             \ .-\__ - ___/-. /
          ___. .' /--.--\ . . __
       ."" '< .___\_<|>_/___.' >'"".
      | | : - \.;\ _ /;./ -  : | |
        \ \ -. \_ __\ /__ _/ .- / /
======-.____-.___\_____/___.-____.-'======
                   =---='
.............................................
         佛祖保佑             永无BUG
EOF

mkdir /grub-efi
cd /grub-efi
wget https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/APKINDEX.tar.gz
tar -zxf APKINDEX.tar.gz
version=$(grep -A 1 "P:grub-efi" APKINDEX | grep "^V:" | awk -F: '{print $2}')
wget https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/grub-efi-${version}.apk -O grub-efi.tar.gz
tar --strip-components=3 -zxf grub-efi.tar.gz usr/lib/grub/i386-efi -C /usr/lib/grub

cat<<EOF>/usr/share/grub/sbat.csv
sbat,1,SBAT Version,sbat,1,https://github.com/rhboot/shim/blob/main/SBAT.md
grub,3,Free Software Foundation,grub,2:2.12-2,https//www.gnu.org/software/grub/
grub.arch,1,Arch Linux,grub,2:2.12-2,https://archlinux.org/packages/core/x86_64/grub/
EOF

cd /archiso
make PREFIX=/usr install
cd /lingmo-archiso-build
mkarchiso -v . -o /out
ls /out
