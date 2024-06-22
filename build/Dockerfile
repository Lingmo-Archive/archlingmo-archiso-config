FROM alpine:latest

RUN apk add --no-cache wget bash git arch-install-scripts make bash coreutils util-linux grep gawk xz sed dosfstools e2fsprogs grub gzip squashfs-tools py3-docutils
RUN wget https://gitlab.archlinux.org/archlinux/packaging/packages/pacman-mirrorlist/-/raw/main/mirrorlist -O /etc/pacman.d/mirrorlist

RUN git clone https://gitlab.archlinux.org/archlinux/archiso.git /archiso
RUN git clone --depth 1 --branch alpine-docker-test --single-branch https://github.com/LingmoOS-Testing/lingmo-archiso-build /lingmo-archiso-build

CMD ["/lingmo-archiso-build/build/build.sh"]
