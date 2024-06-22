#!/bin/sh
set -e
cd /lingmo-archiso-build/archiso
make PREFIX=/usr install
mkarchiso -v . -o /out
