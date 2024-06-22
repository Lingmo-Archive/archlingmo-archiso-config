#!/bin/sh
set -e
cd /archiso
make PREFIX=/usr install
cd /lingmo-archiso-build
ls /usr/local/bin
ls /usr/bin
echo $PATH
whereis mkarchiso
mkarchiso -v . -o /out
