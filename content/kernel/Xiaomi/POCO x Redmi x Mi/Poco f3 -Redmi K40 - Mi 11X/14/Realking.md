---
type   : kernel
title  : Download Realking Kernel Xiaomi Poco f3 | Redmi K40 | Mi 11X
date   : 2024-05-26T09:17:35+07:00
slug   : realking-alioth
categories: [kernel]
tags      : [alioth]
keywords  : [Poco f3 | Redmi K40 | Mi 11X]
author : NotZeetaa
---

Download Custom Realking Kernel Xiaomi Poco f3 | Redmi K40 | Mi 11X Alioth

## Changelog
- Built With Latest Zyc clang-19.
- Merged Latest CLO tags: 'LA.UM.9.12.c10-78900-SAIPAN.QSSI14.0' , 'LA.UM.9.12.1.r1-08200-SMxx50.QSSI12.0' 
- kernel/sys.c: implement custom uname override ( What this basically means that now a fake kernel version is reported to the userspace hence fixing the issue with Safety net not passing due to Kernel's name string.)
- cfq-iosched: Apply tunes from Pixel 4
- cfq-iosched: Block group_idle setting for booster processes
- Upstreams in Rcu
- Remove BFQ-SQ I/O scheduler ( was causing some random reboots in some roms )
- techpack: display: Remove exposure adjustment driver completly.

## Notes
- Container zip
- All roms should boot fine.
- Miui and Aosp both supported 
- If your safety net fails flash the module given in notes "#safetynet_fix_module"
- Do consider donating if you like my work.

## Credits
- Allah S.W.T of course
- Testers Gang.

By @Rohail33

## Link
[Download](https://www.pling.com/p/1858015/)
