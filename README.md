![GitHub stars](https://img.shields.io/github/stars/wukongdaily/istoreos-docker-builder?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/wukongdaily/istoreos-docker-builder?style=flat-square)
![License](https://img.shields.io/github/license/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Docker Pulls](https://img.shields.io/docker/pulls/wukongdaily/openwrt-istoreos?style=flat-square)](https://hub.docker.com/r/wukongdaily/openwrt-istoreos)
![Last Commit](https://img.shields.io/github/last-commit/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Releases](https://img.shields.io/github/v/release/wukongdaily/istoreos-docker-builder?style=flat-square)](https://github.com/wukongdaily/istoreos-docker-builder/releases)

# istoreos-docker-builder

Build a customized iStoreOS root filesystem for Docker using ImageBuilder.

This project provides reproducible build scripts and configurations for generating a minimal iStoreOS rootfs.

---

## Features

* Build iStoreOS rootfs for Docker
* Support multiple targets (x86_64 / armsr)
* Custom package selection
* Preconfigured system files

---

## Customizations

* Enabled rootfs tar output:
* Custom ImageBuilder config (applied via config.seed)

```bash
CONFIG_TARGET_ROOTFS_TARGZ=y
```

* Custom packages via `packages.list`
* Custom system configuration via `files/`

---

## ImageBuilder

ImageBuilder is provided by the official iStoreOS distribution:

https://fw.koolcenter.com/iStoreOS/ib/

(Please download from the official source)

---

## Build Instructions

For each target (x86_64 / armsr):

1. Download ImageBuilder
2. Extract it:

   ```bash
   tar --zstd -xvf istoreos-imagebuilder-*.tar.zst
   ```
3. Place it inside the target directory
4. Run:

   ```bash
   ./build.sh
   ```

---

## Project Structure

```bash
targets/
  x86_64/
    packages.list
    config.seed
    files/
  armsr/
    packages.list
    config.seed
    files/
```

---

## Upstream Projects

* [iStoreOS](https://github.com/istoreos/istoreos)
* [OpenWrt](https://github.com/openwrt/)

This project does not include full source code.
Please refer to upstream repositories for source code.

---

## Author

Packaged by **wukongdaily**
