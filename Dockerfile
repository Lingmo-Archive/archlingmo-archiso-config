FROM archlinux:latest

RUN pacman-key --init && \
    pacman-key --populate archlinux && \
    pacman -Syu --noconfirm archiso git memtest86+-efi memtest86+ edk2-shell && \
    git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config /config && \
    pacman-key --lsign-key 'farseerfc@archlinux.org' && \
    pacman --config /config/profile/pacman.conf --noconfirm -Sy archlinuxcn-keyring

CMD sh -c "pacman -Syu && cd /config && git pull && mkarchiso -v /config/profile -o /out"
