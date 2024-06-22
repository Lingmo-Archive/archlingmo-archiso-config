#!/bin/sh
set -e
cd /archiso
make install
cd /lingmo-archiso-build
mkarchiso -v . -o /out
