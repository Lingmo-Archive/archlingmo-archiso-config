FROM alpine:latest

RUN apk add --no-cache bash git arch-install-scripts make bash coreutils util-linux grep gawk xz sed dosfstools e2fsprogs grub gzip squashfs-tools py3-docutils

RUN git clone https://gitlab.archlinux.org/archlinux/archiso.git /archiso
RUN git clone --depth 1 --branch alpine-docker-test --single-branch https://github.com/LingmoOS-Testing/lingmo-archiso-build /lingmo-archiso-build

CMD ["/lingmo-archiso-build/build/build.sh"]
