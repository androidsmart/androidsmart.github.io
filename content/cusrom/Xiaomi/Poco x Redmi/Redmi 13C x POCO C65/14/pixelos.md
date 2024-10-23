---
type   : cusrom
title  : Download Pixel OS Android 14 Xiaomi Redmi 13C x POCO C65
slug   : pixelos-a14-Gale
date   : 2024-10-23T09:17:35+07:00
categories: [rom]
tags      : [gale]
name_rom : pixelos
keywords  : [Redmi 13C x POCO C65]
---

Download Custom Rom Pixel OS Android 14 Xiaomi Redmi 13C x POCO C65 (gale/gust).


## Changelog
- First release

## Bugs
- NFC, fingerprint

## Notes
- Selinux is permissive
- DON'T FLASH IT WITH TWRP, I'LL MUST BE FLASHED WITH ITS RECOVERY
- Based on prebuilt kernel
- Flash the eng preloader in case something goes wrong 
- Gapps already included


## Credits
- @rio113, @ziad_tamer_a, @Adarsh_756, @claxten10, @noah_allen For their help
All testers

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
[ROM](https://github.com/sabrina010209/Releases/releases/download/9.0/PixelOS_gale-14.0-20241007-2143.zip)

[Recovery](https://github.com/sabrina010209/Releases/releases/download/9.0/boot.img)


