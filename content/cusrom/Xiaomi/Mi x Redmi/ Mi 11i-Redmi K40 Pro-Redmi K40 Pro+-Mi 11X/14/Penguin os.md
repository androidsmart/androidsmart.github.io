---
type   : cusrom
title  : Penguin OS Android 14 For Xiaomi 14 Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X
slug   : penguin-a14-hydn
date   : 2024-11-02
name_rom : penguin
categories: [rom]
tags      : [hydn]
keywords  : [ Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X]
---

Download Custom Rom Penguin OS Android 14 For Xiaomi  Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X (hydn).

## Device Changelog
* update kernel to Linux 5.4.284
* Merge CAF LA.UM.9.14.r1-25000.01-LAHAINA.QSSI15.0
* Updated vendor blobs to HyperOS V816.0.3.0.UKKCNXM
* fix annoying speaker issues when audio is played
* Revert"Get rid of reserved sizes" (this fixes read only file system for root dir)
* switch to lz4 compression for ZRAM
* Set swappiness to 60 (default value of 100 is agressive af)
* Downgrade zram to 2GB (4GB is high and 2GB is just enough for us)
* Set AOD max refreshrate to 60Hz
* Drop some prebuilt packages


## Install
### Clean Flash
- Download and boot into Ofox/TWRP image using
- fastboot boot recovery.img OR fastboot boot [BOOT]3.7.0_12-RedmiK40Pro[Pro+]-Mi11XPro-Mi11i_v8.0_A13-haydn-skkk.img
- Wipe Data, Metadata, Cache, Dalvik-Cache
- Copy ROM to Internal Storage and Flash ROM & Recovery OR Sideload ROM
- Reboot Recovery (Not Needed if using TWRP A14 (Skkk 8.0) you can directly format data)
- Format Data
- Reboot System
### Dirty Flash
- Reboot Recovery
- Flash ROM & Recovery
- Reboot System

### Dirty Flash
- After flashing the ROM it might show some errors but it's fine
- TWRP doesn't have a flashable zip, just use the "Automatically reflash TWRP after flashing ROM" option

## Notes
- Synced with latest source
- QPR3 September security patch
- Signed build | SafetyNet pass by default 
- Use A14 TWRP for decryption..

## Download Link
[ROM](https://sourceforge.net/projects/the-haydn-project/files/PenguinOS/)

[Link 2](https://buzzheavier.com/f/GXj-bQXf0AA)


[TWRP](https://t.me/Mi11XProOfficial/336929)
