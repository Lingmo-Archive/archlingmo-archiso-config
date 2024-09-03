# archlingmo-archiso-config
Archiso config used by ArchLingmo (a branch of Lingmo OS based on Arch Linux).
> [!NOTE]
> This project is still WIP and not ready for production environment.

## Build
```console
# pacman -Syu archiso git grub
# pacman-key --lsign-key 'farseerfc@archlinux.org'
# cat >> /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://repo.archlinuxcn.org/$arch
EOF
# pacman -Sy archlinuxcn-keyring
$ git clone --depth 1 https://github.com/LingmoOS/archlingmo-archiso-config
$ cd archlingmo-archiso-config
# mkarchiso -v profile
```
Find the ISO file in `out/` after building.
### See also
[Archiso page on ArchWiki](https://wiki.archlinux.org/title/Archiso)
