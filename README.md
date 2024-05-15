# lingmo-archiso-build
LingmoOS LiveCD based on Arch Linux. This project is WIP and totally unusable.
## Build
### Prerequisites
- at least 3GiB of disk space
- root privileges
### Clone the Repository
```shell
git clone --depth 1 https://github.com/LingmoOS-Testing/lingmo-archiso-build
```
### Run mkarchiso
> Note: If memory allows, it is preferred to place the working directory on tmpfs. This process will consume a lot of time and disk space. After completion, you can view the completed product in the `out` directory.
```shell
mkarchiso -v -w /path/to/workdir -o /path/to/out /path/to/lingmo-archiso-build
```
### See also
[Archiso page on ArchWiki](https://wiki.archlinux.org/title/Archiso)
