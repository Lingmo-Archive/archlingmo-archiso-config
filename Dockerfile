FROM archlinux:latest

RUN pacman-key --init && \
    pacman-key --populate archlinux && \
    pacman -Syu --noconfirm archiso git grub && \
    pacman-key --lsign-key 'farseerfc@archlinux.org' && \
    echo '[archlinuxcn]' >> /etc/pacman.conf && \
    echo 'Server = https://repo.archlinuxcn.org/$arch' >> /etc/pacman.conf && \
    pacman --noconfirm -Sy archlinuxcn-keyring

CMD sh -c "pacman --noconfirm -Syu && \
    git clone --depth 1 --recurse-submodules https://github.com/LingmoOS/archlingmo-archiso-config /config && \
    mkarchiso -v /config/profile -o /out"
