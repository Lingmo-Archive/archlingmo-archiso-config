FROM archlinux:latest

RUN pacman-key --init && \
    pacman -Syu --noconfirm archiso git memtest86+-efi memtest86+ && \
    git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config /config

CMD ["/lingmo-archiso-build/build/build.sh"]
