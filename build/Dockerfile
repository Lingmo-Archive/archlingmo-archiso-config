FROM archlinux:latest

RUN pacman-key --init && \
    pacman -Syu --noconfirm archiso git memtest86+-efi memtest86+ && \
    git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config /config

CMD ["mkarchiso","-v","/config","-o","/out"]
