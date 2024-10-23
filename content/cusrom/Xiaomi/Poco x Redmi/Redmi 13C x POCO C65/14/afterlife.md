---
type   : cusrom
title  : Download AfterLife OS Android 14 Xiaomi Redmi 13C x POCO C65
slug   : afterlife-a14-Gale
date   : 2024-10-23T09:17:35+07:00
categories: [rom]
tags      : [gale]
name rom : afterlife
keywords  : [Redmi 13C x POCO C65]
---

Download Custom Rom Afterlife OS Android 14 Xiaomi Redmi 13C x POCO C65 (gale/gust).


## Changelog
- Initial build
- Fixed NFC
- Add EngineeringMode
- Firmware include (with eng preloader) 

## Known Issues
- VoLTE
- DT2W

## Notes
- Selinux is permissive
- DON'T FLASH IT WITH TWRP OR ANY OTHER CUSTOM RECOVERY, I'LL MUST BE FLASHED WITH THE PROVIDED RECOVERY
- Based on prebuilt kernel (Blame Xiaomi) 
- Vanilla ROM, Flash the gapps of ur choice

## Special Thanks / Credits
- @rexix01 For trees and help
- @WisnuArdhi34 for server
- @KimelaZX, @Chizuui for testing


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
[ROM](https://dl.wulan17.top/afterlife/20241013)

[Recovery](https://github.com/sabrina010209/Releases/releases/download/9.0/boot.img)


