---
type   : cusrom
title  : Download Lineage 21 OS Android 14 Xiaomi Redmi 13C x POCO C65
slug   : lineage-a14-Gale
date   : 2024-10-23
categories: [rom]
tags      : [gale]
name_rom : lineage
keywords  : [Redmi 13C x POCO C65]
---

Download Custom Rom Lineage 21 OS Android 14 Xiaomi Redmi 13C x POCO C65 (gale/gust).


## Changelog
- Initial build
- Fixed fingerprint
- Performance improvement

## Bugs
- NFC
- DT2W

## Notes
- Selinux is permissive
- DON'T FLASH IT WITH TWRP OR ANY OTHER CUSTOM RECOVERY, I'LL MUST BE FLASHED WITH THE PROVIDED RECOVERY
- Based on prebuilt kernel (Blame Xiaomi)
- Flash the eng preloader in case something goes wrong 
- Vanilla ROM, Flash the gapps of ur choice 

## Credits
- @rio113, @ziad_tamer_a, @Adarsh_756, @claxten10, @noah_allen For their help
All testers especially to @Abdo_47197


## Install
### Flashing steps
- fastboot flash boot boot.img
- fastboot reboot recovery
- on recovery go to Format Data > Factory Reset
- go to Apply Update > Apply from ADB 
- adb sideload rom.zip
- go to Apply Update > Apply from ADB 
- adb sideload gapps.zip
- reboot
- enjoy! :D

## Download Link
[ROM](https://github.com/sabrina010209/Releases/releases/download/9.0/lineage-21.0-20241009-UNOFFICIAL-gale.zip)

[Recovery](https://github.com/sabrina010209/Releases/releases/download/9.0/boot_lineage.img)


