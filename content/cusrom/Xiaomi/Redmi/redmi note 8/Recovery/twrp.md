---
type   : cusrom
title  : Download Twrp Latest Version Redmi Note 8 pro Begonia
date   : 2024-03-08T09:17:35+07:00
slug   : twrp-begonia
categories: [Recovery]
tags      : [Begonia]
keywords  : [Twro]
author : wahyu6070
---

Download Twrp Latest version for Xiaomi Redmi Note 8 Pro Begonia



## How To Install
## Flashing From Custom Recovery
- Boot into your existing custom recovery
- Click on "Install," locate the TWRP Zip file on your storage, tap to select, and swipe to flash.
- Wait for the process to complete.
- Return to the home screen, tap "Reboot," and select "Recovery" to boot into the new recovery with fixed Android 14 decryption for hardware-backed ROMs.

### Flashing From Windows
- Download and install usb adb driver from [here](https://drive.google.com/file/d/1E9yi0MPTFzosfhtxsQJoMkNZ4qUQ4NeQ/view?usp=sharing).
- Download adb/fastboot platform tools from [here](https://drive.google.com/file/d/1TbVmeREkIqtmC2XuY6i2tRf4MUm41D3v/view?usp=sharing).
- Download and Extract The TWRP Zip File onto your PC 
- After Extracting, Open the TWRP Folder and Click on flash.bat . 
- Connect your Phone to PC in Fastboot Mode and the Phone Will be booted into The Recovery if Flashed Successfully. 

### Flashing From Linux
- Install drivers and adb/fastboot platform tools with commands:
– For Debian-based linux: sudo apt-get install android-tools-adb
– For Fedora/SUSE-based linux: sudo yum install android-tools
– For Arch-based linux: sudo pacman -S android-tools

- Download TWRP from [here](https://drive.google.com/file/d/1VZzaSLHYzF2bWp-itgpthjCRh_6_UptU/view?usp=sharing) and put it to home folder (/home/(username) | ~/).
- Enter in terminal cd ~/ command.
- Reboot your phone into fastboot mode via pressing power key and volume– key.
- Connect your phone to PC via USB cabel.
- Enter sudo fastboot devices command, make sure that your phone in attached list.
- Enter sudo fastboot flash recovery recovery.img command to flash TWRP.
- Enter sudo fastboot reboot recovery command to reboot into TWRP.

### Flashing from MacOS
- Download adb/fastboot platform tools from [here](https://dl.google.com/android/repository/platform-tools-latest-darwin.zip).
- Unpack adb/fastboot platform tools to adb folder.
- Download TWRP from [here](https://drive.google.com/file/d/1VZzaSLHYzF2bWp-itgpthjCRh_6_UptU/view?usp=sharing) and put it to adb folder.
- Go to adb folder using the terminal.
- Reboot your phone into fastboot mode via pressing power key and volume– key.
- Connect your phone to PC via USB cabel.
- Enter ./fastboot devices command, make sure that your phone in attached list.
- Enter ./fastboot flash recovery recovery.img command to flash TWRP.
- Enter ./fastboot reboot recovery command to reboot into TWRP.

## Changelog
- Fixed data decryption on ROMs with hardware-backed encryption (Beanpod).

## Notes
- Only For ROMs With Hardware-Backed Encryption (A12-14)
- MIUI NOT SUPPORTED

By @shhhamik 

## Download Link
[Download](https://drive.google.com/file/d/1oaBMNNTGxsjnMni202j162kGcV_4sYf6/view?usp=sharing)

[Mirror](https://t.me/shamiksfiles/30)
