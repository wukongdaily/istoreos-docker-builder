![GitHub stars](https://img.shields.io/github/stars/wukongdaily/istoreos-docker-builder?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/wukongdaily/istoreos-docker-builder?style=flat-square)
![License](https://img.shields.io/github/license/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Docker Pulls](https://img.shields.io/docker/pulls/wukongdaily/openwrt-istoreos?style=flat-square)](https://hub.docker.com/r/wukongdaily/openwrt-istoreos)
![Last Commit](https://img.shields.io/github/last-commit/wukongdaily/istoreos-docker-builder?style=flat-square)
[![Releases](https://img.shields.io/github/v/release/wukongdaily/istoreos-docker-builder?style=flat-square)](https://github.com/wukongdaily/istoreos-docker-builder/releases)

 简体中文| [English](README.md)

### ⚠️ 权限提示

本容器需要以 `--privileged` 权限运行。

这意味着容器拥有接近宿主机 **root** 的权限，可直接修改宿主机的网络与系统配置。  
一旦容器或镜像被入侵，风险等同于整台设备被完全控制。

请仅在**充分理解风险并信任镜像来源**的前提下，在 飞牛OS、绿联UGOS 等 NAS 场景中使用。

# istoreos-docker-builder

🔗 Docker Hub：https://hub.docker.com/r/wukongdaily/openwrt-istoreos

使用 ImageBuilder 构建可用于 Docker 的 iStoreOS rootfs。

本项目提供可复现的构建脚本与配置，用于生成精简版 iStoreOS 系统。

---

## 特性

* 构建适用于 Docker 的 iStoreOS rootfs
* 支持多架构（x86_64 / armsr）
* 支持自定义软件包（packages.list）
* 支持系统配置覆盖（files/）

---

## 自定义内容

* 启用 rootfs tar 输出（用于 Docker）：

```bash
CONFIG_TARGET_ROOTFS_TARGZ=y
```

* 自定义软件包：`packages.list`
* 自定义系统配置：`files/`
* 配置通过 `config.seed` 自动应用

---

## ImageBuilder

ImageBuilder 由 iStoreOS 官方提供：

https://fw.koolcenter.com/iStoreOS/ib/

https://site.istoreos.com/

（请优先从官方地址下载）

---

## 构建方法

以 x86_64 / armsr 为例：

1. 下载 ImageBuilder
2. 解压：

```bash
tar --zstd -xvf istoreos-imagebuilder-*.tar.zst
```

3. 放入对应目录
4. 执行：

```bash
./build.sh
```

---

## 项目结构

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

## 上游项目

* [iStoreOS](https://github.com/istoreos/istoreos)
* [OpenWrt](https://github.com/openwrt/)

本项目不包含完整源码，请参考上游仓库。

---

## 作者

由 **wukongdaily** 打包维护

---

- 建议在Linux内核较高（6.x）的系统上使用(比如飞牛、绿联、OMV、Armbian、Debian、Ubuntu等等) 
- ✅ 已测试 飞牛fnOS（x86-64 、arm64） 
- ✅ 已测试 绿联UGOS（x86-64） arm64（绿联 DH4300 PLUS已测试）
- ✅ 已测试 openmediavault（x86-64 、arm64）
- ✅ 已测试 Armbian（x86-64 、arm64）
- ❌ TrueNAS 存在兼容问题 请勿搭建
- ❌ 威联通和群晖 存在兼容问题 请勿搭建
(因为他们都深度魔改了 Linux 内核与网络，虚拟交换机、OVS、lxcbr0 网桥、权限管控、防火墙规则全是定制的，跟标准 Linux、飞牛、UNRAID 绿联 完全不一样。这两款建议直接使用虚拟机)
- ❌ 极空间（不能运行，原因是极空间不开放docker的root权限（privileged）。）存在兼容问题 请勿搭建

## ❤️ 支持项目

如果这个项目对你有帮助：

* ⭐ 给仓库点个 Star
* 🔄 分享给更多人

<a href="https://wkdaily.cpolar.cn/01" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png"
       alt="Buy Me A Coffee"
       style="width:15%; height:auto;">
</a>

你的支持将帮助项目持续维护与改进。

感谢支持！

