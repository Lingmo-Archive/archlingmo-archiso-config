#!/bin/sh
set -e
cd /archiso
make PREFIX=/usr install
cd /lingmo-archiso-build
mkarchiso -v . -o /out
