---
type   : kernel
title  : Boolx kernel for Mi 9T Pro raphael
slug   : boolx-kernel-raphael
date   : 2024-05-24
categories: [kernel]
tags      : [raphael]
keywords  : [mi 9T Pro]
author : NATO66613
---

Download Custom Kernel Boolx Android 14 Xiaomi 9T Pro.

## Changelog
Build Date 21-03-2024

- Upstreamed to latest OpenEla Kernel 4.14.339
- Merged to Merge tag LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0
- Fully drop pixel thermal stuff
- Optimized Ksu, and Updated ksu to 0.9.0-22-g8c44e82
- Optimized thermal from Waffle
- Migrate to proper modern uclamp
- Optimized charger, drop logs spam
- Optimized cpuset for simple thermal
- Switch to BBR plus for tcp congestion
- Disable cpu input boost
- Also update new build for Dynamic thanks for @Laz_man for his works and other stuff from Wafle kernel
- Fixed refresh rate on some apps will not getting auto changes to 90hz. like on blackhole etc
- Fix fod refresh rate going up to 90hz, although Rom didn't patch the fix or (disabling Optimal Refresh rate from dt and rom source side) : use refreshrate tool.apk and force set to 60hz, but not saved at boot
- Build with Boolx-clang 19 Beta (Basic init)

## NOTES:
Boolx Version Info

- losfod : FOD old impl ROM ex : LOS, (VOS a13 only) and older ROM 
- Newimpl : FOD new impl legacy ROM
- DSP : FOD new impl for ROM with Dynamic Partiton support
- Miui : is for all MIUI ROM (without Overclock Display maybe next build, alternative use kami)
- Kernel default with dtbo.img 60hz, if you wana use overclock display upto 90hz, just rename file with "ocd/OCD" , 

## Download Link
[newimpl](https://sourceforge.net/projects/boolx/files/Boolx-Kernel/Boolx-1.7/Bool-X-Raphael-V1.7-Pickasal-LGC-20240321-1148.zip/download)

[oldimpl](https://sourceforge.net/projects/boolx/files/Boolx-Kernel/Boolx-1.7/Bool-X-Raphael-V1.7-Pickasal-LGC-losfod-20240321-1233.zip/download)

[dynamic](https://sourceforge.net/projects/boolx/files/Boolx-Kernel/Boolx-1.7/Bool-X-Raphael-V1.7-Pickasal-DSP-20240321-1142.zip/download)

[miui/hyper](https://sourceforge.net/projects/boolx/files/Boolx-Kernel/Boolx-1.7/Bool-X-Raphael-V1.7-Pickasal-Miui-HyperOs-20240321-1242.zip/download)
