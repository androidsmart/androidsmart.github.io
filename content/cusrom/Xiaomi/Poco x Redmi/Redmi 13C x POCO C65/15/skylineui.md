---
type   : cusrom
title  : Download Skylineui OS Android 15 Xiaomi Redmi 13C x POCO C65
slug   : skylineui-a15-Gale
date   : 2024-12-06
categories: [rom]
tags      : [gale]
name_rom : skyline
keywords  : [Redmi 13C x POCO C65]
author : http://t.me/panzzxz
---

Download Custom Rom Skyline OS Android 15 Xiaomi Redmi 13C x POCO C65 (gale/gust).

## Install 
STEPS TO INSTALL CUSTOM ROMS

- Go to the folder where the ROM, boot, and preloader were downloaded and open the terminal or CMD.

- On the device, restart into fastboot and verify that fastboot is being recognized. To verify, use: 

- ``fastboot devices``

- If everything is correct, type the following commands:

- ``fastboot flash preloader_a preloader_gale.bin``

- ``fastboot flash preloader_b preloader_gale.bin``

- After entering these commands, type fastboot 

- reboot fastboot

- After entering fastboot again, flash the boot.img with the command: 

- ``fastboot flash boot boot.img``

- And after the boot is installed, type 

- ``fastboot reboot recovery``

- In recovery, do a wipe (DO NOT REBOOT OR EXIT RECOVERY)

### Then go to apply update and then apply from adb

- In the CMD or terminal, type: 
adb sideload EvolutionX-14.0-20241113-gale-v9.6-Unofficial.zip
 (if it's another ROM, replace with the name of the ZIP file of the ROM, okay?)

And the installation begins.

After that, some messages will appear to install additional packages, and then you press (NO) and that's it, the ROM has been installed, just restart and enjoy!

## Changelog
- Selinux Is Enforcing
- Include Gapps
- Sync with latest dt

## Bugs:
- VoLTE
- DT2W (sometimes work for lock)
- FingerPrint Doesnt work yet.
- tell me if u found any bugs

## Notes
- You can use orangefox for flash
- Dont Forget Backup Ur IMEI And Flash Eng Preloader(AntiBrick Patch)

## Special Thanks / Credits
- @rexix01 (For Device tree)
- @Apichat_chata (For Servers , Support And Test)
- @Jandimple (Best Teacher)
- @ZaibatsuX (For Testing)


## Download Link
[ROM](https://gofile.io/d/FGaejK)

