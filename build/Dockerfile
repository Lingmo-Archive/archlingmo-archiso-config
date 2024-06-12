FROM archlinux:latest

RUN pacman-key --init && \
    pacman -Syu --noconfirm && \
    pacman -S --noconfirm archiso git memtest86+-efi memtest86+

RUN git clone https://github.com/LingmoOS-Testing/lingmo-archiso-build /archiso

WORKDIR /archiso

CMD ["/archiso/build/build.sh"]
