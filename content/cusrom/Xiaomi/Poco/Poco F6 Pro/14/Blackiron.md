---
type   : cusrom
title  : Download BlackIron OS Android 14 Poco F6 Pro
date   : 2024-10-16T09:17:35+07:00
slug   : blackiron-a14-vermeer
categories: [rom]
tags      : [vermeer]
keywords  : [Poco f6 Pro]
author : ralf979
---

Download Custom Rom BlackIron OS android 14 for xiaomi poco f6 Pro (vermeer).

## Changelog
 - October Security Patch
 - Update Kernel to source built 2024-10-07
 - Add some overlay for doze
 - Added pick to wake (show ambient display instead of the lockscreen)
 - Imported Xiaomi Parts from sdm845
 - Added clear speacker
 - Added Per-app refresh rate
 - Added Thermal profiles
 - Enable zygote critical window
 - Enabled Call Recording
 - Added min. & max refresh rate control
 - Disable proximity usage during doze
 - Set 60Hz max refresh rate on AOD
 - switch health qti
 - Build common Xiaomi touch HIDL
 - Build common QTI vibrator HAL
 - Enable xiaomi vibrator effects on common qti vibrator hal
 - ... small other improvement



## FLASH INSTRUCTIONS
- Before flashing any rom, make a backup of your data! 🚥

### Pre-requisites 
- Brain and ability to READ !
- Gapps included so no need to flash/sideload GApps
- Install any HyperOS firmware based on Android 14
- UPDATE TO LATEST FASTBOOT DRIVER

### Clean Flash Guide 1

- Open Terminal and Reboot to Bootloader (orange Fastboot)  —> adb reboot bootloader (or press Power + Vol -) 
- Format Data —>  fastboot -w 
- Flash Rom —> fastboot update "romfile.zip" (replace romfile.zip to name of dowloaded rom)
- After a while device WILL reboot itself into fastbootd!!
- Once process Is done type fastboot reboot

### Clean Flash Guide 2

- Open Terminal and Reboot to Bootloader (orange Fastboot)  —> adb reboot bootloader (or press Power + Vol -) 
- Flash Rom —> fastboot update "romfile.zip" (replace romfile.zip to name of dowloaded rom)
- Reboot to Recovery --> press Power + Vol up
- Factory reset
- Format Data
- Reboot

#### Dirty Flash

*** if you are on the previous version you can do dirty flash ***

- Open Terminal and Reboot to Bootloader (orange Fastboot)  —> adb reboot bootloader (or press Power + Vol -) 
- Flash Rom —> fastboot update "romfile.zip" (replace romfile.zip to name of dowloaded rom)
- Reboot

#### ROOT
- dowload Magisk.apk
- rename in Magisk.zip
- Reboot to Recovery --> press Power + Vol up
- Apply update
- Apply from ADB
- Connect Device to PC and open Terminal
- flash Magisk.zip --> adb siledoad Magisk.zip
- Reboot


## Notes
- Flash your region's latest HyperOS version
- Install the latest fastboot and ADB drivers
- Flashing instruction in XDA second post or device changelog

## Credits
- @Giokas & @Offain for device trees

By @ralf979


## Download Link
[Download ROM](https://sourceforge.net/projects/black-iron-project/files/vermeer/Blackiron-4.9_vermeer-14-20241013-1818-Official.zip/download)

