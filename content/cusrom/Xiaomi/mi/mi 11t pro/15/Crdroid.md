---
type   : cusrom
title  : Download Crdroid Android 15 XiaoMI 11T Pro Vili
slug   : crdroid-a15-vili
date   : 2024-11-21T09:17:35+07:00
categories: [rom]
tags      : [vili]
name_rom : crdroid
keywords  : [xiaomi 11T Pro]
---

Download Custom Rom Crdroid Android 15 For Xiaomi 11T Pro (vili).

## Changelog
- Source upstream
- Add back sensorscalibrate HAL and blobs
- add game_default_frame_rate_override property
- Fixed Dolby with Bluetooth
- Merged Proper Dolby support on source

## How To Install
- Make sure you have latest  firmware available for your country.
- Gapps package (optional) (from download page, gapps button)
- Recovery (from download page, recovery button)
- A pc with platform-tools working (adb/fastboot)

### First time installation (clean flash):
- Unlock Bootloader
- Reboot Fastboot
- fastboot flash boot boot.img
- fastboot flash vendor_boot vendor_boot.img
- fastboot reboot recovery
- Now in recovery go to factory reset and confirm the reset
- Choose apply update and Apply from ADB
- Now install crDroid zip via sideload
- adb sideload crDroid.zip
- When asked to sideload gapps, choose 'Yes' to reboot to recovery or 'No' if you don't want gapps and want to reboot to system
- Now if you choosed to install gapps, simply sideload gapps.zip the same way you installed crDroid.zip then reboot to system

### Update installation
- Via recovery (recommended way):
- Boot to recovery
- Choose apply update and Apply from ADB
- Now install crDroid zip via sideload and reboot
- adb sideload crDroid.zip
- If you had gapps, reboot to recovery and sideload gapps.zip and reboot

### Via OTA
- Go to Settings -> System -> Updater and download latest build
- Choose install and let it finish
- If having gapps, reboot to recovery and sideload gapps package again
- Reboot


## Download Link
[ROM](https://sourceforge.net/projects/crdroid/files/vili/11.x/)

[Recovery](https://sourceforge.net/projects/crdroid/files/vili/11.x/recovery/)

[Source](https://crdroid.net/vili/11)
