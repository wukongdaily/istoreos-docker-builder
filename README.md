![GitHub stars](https://img.shields.io/github/stars/wukongdaily/istoreos-docker-builder?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/wukongdaily/istoreos-docker-builder?style=flat-square)
![License](https://img.shields.io/github/license/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Docker Pulls](https://img.shields.io/docker/pulls/wukongdaily/openwrt-istoreos?style=flat-square)](https://hub.docker.com/r/wukongdaily/openwrt-istoreos)
![Last Commit](https://img.shields.io/github/last-commit/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Releases](https://img.shields.io/github/v/release/wukongdaily/istoreos-docker-builder?style=flat-square)](https://github.com/wukongdaily/istoreos-docker-builder/releases)

English | [简体中文](README_CN.md)


# istoreos-docker-builder

🔗 Docker Hub：https://hub.docker.com/r/wukongdaily/openwrt-istoreos

Build a customized iStoreOS root filesystem for Docker using ImageBuilder.

This project provides reproducible build scripts and configurations for generating a minimal iStoreOS rootfs.

---

## Features

* Build iStoreOS rootfs for Docker
* Support multiple targets (x86_64 / armsr)
* Custom package selection
* Preconfigured system files

---

## Supported Systems List

Supports **x86-64** and **arm64**

> It is recommended to run on systems with a relatively new Linux kernel (6.x), such as fnOS, UGOS, OMV, Armbian, Debian, Ubuntu, etc.

---

## ✅ Tested and Verified

- fnOS (x86-64, arm64)
- UGOS (x86-64), arm64 (UGOS DH4300 PLUS tested)
- openmediavault (OMV) (x86-64, arm64)
- Armbian (x86-64, arm64)

---

## ❌ Not Recommended / Compatibility Issues

- TrueNAS — Compatibility issues. **Do not deploy.**
- QNAP and Synology — Compatibility issues. **Do not deploy.**  
  These systems heavily customize the Linux kernel and networking stack (virtual switches, OVS, `lxcbr0` bridges, permission controls, firewall rules), which differ significantly from standard Linux environments such as fnOS, UNRAID, and UGOS. It is recommended to use a virtual machine instead.
- ZimaOS — Cannot run because Docker does not allow `privileged` mode. **Do not deploy.**

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


https://site.istoreos.com/

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

---

## ❤️ Support

If this project is helpful to you, you can support the development:

* ⭐ Star this repository
* 🔄 Share with others


<a href="https://wkdaily.cpolar.cn/01" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png"
       alt="Buy Me A Coffee"
       style="width:15%; height:auto;">
</a>

Thank you for your support!


