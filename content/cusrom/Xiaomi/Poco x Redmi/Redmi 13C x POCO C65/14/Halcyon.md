---
type   : cusrom
title  : Download Halcyon OS Android 14 Xiaomi Redmi 13C x POCO C65
slug   : halcyon-a14-Gale
date   : 2024-12-06
categories: [rom]
tags      : [gale]
name_rom : halcyon
keywords  : [Redmi 13C x POCO C65]
---

Download Custom Rom Halcyon OS Android 14 Xiaomi Redmi 13C x POCO C65 (gale/gust).

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
- Initial build
- Updated IMS blobs from latest hyperOS EEA
- Updated blobs from hyperOS 1.0.5.0 global
- Selinux is now enforcing
- Fixed booting issues for some variants
- Switched to common MediaTek USB hal 
- Switched to libperfmgr 
- Performance improvements
- Fixed QS lag

## Bugs
- Dt2w doesn't work when the phone is locked 
- Volte
- NFC for TMS variant

## Notes
- Selinux is enforcing
- Flash from halcyon recovery
- Gapps included
- Firmware is not included and flash the eng preloader 

## Credits
- @tsuki172 and @claxten10 For help
- @ghostgamer77 For testing


## Download Link
[ROM](https://github.com/sabrina010209/Releases/releases/download/9.0/halcyon_gale-14.3-20241128-0120-UNOFFICIAL.zip)

[Recovery](https://github.com/sabrina010209/Releases/releases/download/9.0/boot_halcyon.img)
