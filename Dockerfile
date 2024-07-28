FROM archlinux:latest

RUN pacman-key --init && \
    pacman-key --populate archlinux && \
    pacman -Syu --noconfirm archiso git memtest86+-efi memtest86+ edk2-shell && \
    git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config /config && \
    pacman-key --lsign-key 'farseerfc@archlinux.org' && \
    echo '[archlinuxcn]' >> /etc/pacman.conf && \
    echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf && \
    pacman --noconfirm -Sy archlinuxcn-keyring

CMD sh -c "pacman -Syu && \
    git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config /config && \
    mkarchiso -v /config/profile -o /out"
