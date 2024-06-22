FROM alpine:latest

RUN apk add --no-cache bash git arch-install-scripts make bash coreutils util-linux grep gawk xz sed dosfstools e2fsprogs grub gzip squashfs-tools

RUN git clone https://gitlab.archlinux.org/archlinux/archiso.git

RUN git clone --depth 1 https://github.com/LingmoOS-Testing/lingmo-archiso-build /lingmo-archiso-build
WORKDIR /lingmo-archiso-build
CMD ["/lingmo-archiso-build/build/build.sh"]
