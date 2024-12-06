---
type   : cusrom
title  : Project Pixelage OS Android 15 POCO X5 Pro 5G / Redmi Note 12 Pro Speed
slug   : pixelage-a15-redwood
date   : 2024-12-06
categories: [rom]
name_rom : pixelage
tags      : [redwood]
keywords  : [POCO X5 Pro 5G - Redmi Note 12 Pro Speed]
---

Download Custom Rom Project Pixelage OS Android 15 Xiaomi POCO X5 Pro 5G/Redmi Note 12 Pro Speed (redwood).

## Installation
### CLEAN FLASH WITH AOSP RECOVERY
1. Download the boot , dtbo  and vendor_boot images  from [HERE](https://sourceforge.net/projects/poco-x5-pro-roms/files/Aosp_Recovery_Fts%2BGoodix/).  [all files are in zip file so kindly unzip that file.]

2. Connect To Pc

3. Reboot to fastboot  ( press  both power_button_key + vol_down_key ) and follow the steps as given below.

4. ``fastboot flash vendor_boot  vendor_boot.img``

5. ``fastboot flash dtbo dtbo.img``

6. ``fastboot flash boot boot.img``

7. ``fastboot reboot recovery``

8. Select Wipe Data/factory Reset & Confirm

9. Select 'apply Update' From Adb

10. adb sideload  Rom_Name.zip

11. Select Wipe Data/factory Reset & Confirm

12. After Installation Complete, Reboot System.

13. ( optional ). Reboot to recovery to sideload any add-ons ( e.g magisk, firmware, gapps etc )



### DIRTY FLASH ( Without data format )

1. Reboot to recover by holding power button and volume up simultaneously

2. In the recovery menu select Apply update through ADB

3. adb sideload Rom_name*.zip ( or drag down the rom zip to cmd )

4. After installation complete, Reboot system.

### Change partition slots ( optional )

- If your device does not change slot automatically, you can do it manually just follow the given steps.
	
- ``adb reboot bootloader``

- ``fastboot getvar current-slot``

- ``fastboot --set-active=b`` ( for eg. your current active slot is A so you would want your current slot to set be on B )

- ``fastboot reboot``

### Linux fastboot permission issue 

Try using sudo $(which fastboot) instead of  fastboot 

for eg.

- sudo $(which fastboot) devices
	
- sudo $(which fastboot) flash vendor_boot  vendor_boot.img
  
and so on.


###  How to flash rom with TWRP?

- Before doing the following you should be sure that your bootloader is unlocked.
- Download twrp-TheStrechh-RX.img from [HERE](https://sourceforge.net/projects/poco-x5-pro-roms/files/Twrp/twrp-TheStrechh-R2.img/download), and platform tools from HERE [Windows](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) and [Linux](https://dl.google.com/android/repository/platform-tools-latest-linux.zip)
- Extract platform tools in C:\  and copy boot.img in folder.
- Open terminal (CMD) in local folder and paste this command fastboot boot twrp-TheStrechh-R2.img , then click enter.
- Device boot in TWRP interface go to Advance and select Flash current TWRP and confirm.
   Done, you have TWRP installed fine, now can reboot system.

#### First option
- Download ROM, then go to Install -> select your ROM.zip -> Confirm.
- Back to TWRP Home, Go to wipe -> format data -> wipe cache from advanced wipe (For clean flashes only. If you are just updating, ignore this step).
- Back to TWRP Home, Go to reboot -> and change active slot. If active slot was A, select B. Or if active slot was B, select A. There is an indicator there shows active slot.
- Back to TWRP Home, go to Advanced -> flash current TWRP . If you forget this step, you'll lose TWRP after reboot.
- Now reboot system and enjoy.

#### Second option
- Boot in TWRP -> format data -> yes
- Install the ROM with adb sideload -> adb sideload rom.zip in adb termianl.
- Back to TWRP Home, go to Advanced -> flash current TWRP . If you forget this step, you'll lose TWRP after reboot.
- Reboot recovery and flash the gapps of your choice.
- Now reboot system and enjoy.


## Notes:
- Dirty flash is not possible 
- Device certified as of now
- KernelSU Supported
- If you face any bug report me( @anupamdas00)

## Credits
- Special thanks to @Rdx55 for his trees and help & @Divyanshu775 @TheStrechh @svasiliev22 for resources 

By @anupamdas00

## Link
[ROM](https://sourceforge.net/projects/project-pixelage/files/29-11-2024/ProjectPixelage-v2.2-redwood-15.0-UNOFFICIAL-20241129-0928.zip/download)

[Firmware](https://xiaomifirmwareupdater.com/archive/firmware/redwood/)
