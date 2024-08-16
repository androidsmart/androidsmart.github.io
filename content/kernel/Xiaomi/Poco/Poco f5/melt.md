---
type   : kernel
title  : Download Melt Kernel Poco F5 Marble
date   : 2024-03-17T09:17:35+07:00
slug   : melt-marble
categories: [kernel]
tags      : [marble]
keywords  : [melt]
---

Download Custom Kernel Melt Kernel Poco F5 Marble

## Changelog
- Merge 5.10.212
- Merge KERNEL.PLATFORM.1.0.r3-04200-kernel.0 (base)
- Merge LA.VENDOR.1.0.r2-09400-WAIPIO.QSSI14.0 (wifi driver, audio driver, eva driver, dataipa driver)
- Merge VIDEO.LA.2.0.r2-01900-WAIPIO.0 (video driver)
- Synchronize with the upstream android12-5.10 and android12-5.10-lts branch
- Update WiFi driver (2.0.9.21U)
- Update NTFS3 driver
- Disable CASS (it's said to cause some strange problems)
- Backport the latest binder driver
- Backport the latest Damon driver from AmazonLinux
- Add EDAC modules to custom module blacklist
- Add cs35l43_dlkm to custom module blacklist
- Add Coresight device placeholder driver

## Kernelsu
- Select through the volume keys during the installation process to install the kernel that supports KernelSU.
- Install the KernelSU app v0.8.1 for use with KernelSU.
- We don't recommend using Magisk and KernelSU at the same time. If any problems occur, it's your own responsibility!



## Link
[Download](https://github.com/Pzqqt/android_kernel_xiaomi_marble/releases/tag/Melt-marble-v2.6)
