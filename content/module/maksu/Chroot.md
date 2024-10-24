---
type   : module
title  : Chroot Distro Magisk Ksu Module
slug : chroot-distro
date   : 2024-03-13T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
---


  Install linux distributions on android    with chroot
> warning : this work only on rooted android devices

+ chroot-distro path : /data/local/chroot-distro/

### Android paths on distributions :
+ /dev 
+ /sys
+ /proc
+ /dev/pts
+ /sdcard 
+ /system
+ /storage
+ /data

### usage
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://raw.githubusercontent.com/YasserNull/chroot-distro/main/screenshot/help.png)


+ help
``
chroot-distro help
``
+ list of available linux distributions
``
chroot-distro list
``

+ download rootfs file
``
chroot-distro download <distro>
``
+ redownload rootfs file
``
chroot-distro redownload <distro>
``
+ delete rootfs 
``
chroot-distro delete <distro>
``

+ install distro
``
chroot-distro install <distro>
``
+ reinstall distro
``
chroot-distro reinstall <distro>
``
+ uninstall distro
``
chroot-distro uninstall <distro>
``

+ backup distro
``
chroot-distro backup <distro>
``
+ backup distro with custom path
``
chroot-distro backup <distro> <path>
``
+ remove backup distro
``
chroot-distro unbackup <distro>
``
+ restore distro
``
chroot-distro restore <distro>
``
+ restore distro with custom path
``
chroot-distro restore <distro> <path>
``

+ login to distro
``
chroot-distro login <distro> 
``

## supported distributions
+ kali-linux : Kali Linux
+ alpine : Alpine Linux
+ archlinux : Arch Linux
+ artix : Artix Linux
+ debian : Debian
+ deepin : Deepin
+ fedora : Fedora 39
+ manjaro : Manjaro 
+ openkylin : OpenKylin 
+ opensuse : OpenSUSE
+ pardus : Pardus 
+ ubuntu : Ubuntu
+ void : Void Linux

## best features
you can use chroot-distro on any terminal
like mt manger , termux , twrp , Android terminal emulator...
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://raw.githubusercontent.com/YasserNull/chroot-distro/main/screenshot/debian.png)
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://raw.githubusercontent.com/YasserNull/chroot-distro/main/screenshot/kali-linux.png)
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://raw.githubusercontent.com/YasserNull/chroot-distro/main/screenshot/debian_vnc.png)


## Install chroot-distro
[module](https://github.com/Magisk-Modules-Alt-Repo/chroot-distro/releases/latest)

warning : required busybox for android ndk module 

