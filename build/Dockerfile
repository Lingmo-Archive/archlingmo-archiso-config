FROM alpine:edge

RUN apk add --no-cache wget bash git arch-install-scripts make bash coreutils util-linux grep gawk xz sed dosfstools e2fsprogs grub grub-efi gzip squashfs-tools py3-docutils pacman mtools
RUN mkdir /etc/pacman.d
RUN wget "https://www.archlinux.org/mirrorlist/all/" -O /etc/pacman.d/mirrorlist
RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
RUN pacman-key --init

RUN git clone https://gitlab.archlinux.org/archlinux/archiso.git /archiso
RUN git clone --depth 1 --branch alpine-docker-test --single-branch https://github.com/LingmoOS-Testing/lingmo-archiso-build /lingmo-archiso-build

CMD ["/lingmo-archiso-build/build/build.sh"]
