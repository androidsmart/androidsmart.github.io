---
type   : cusrom
title  : Download Rom Pixel Experience Android 14 Poco F1 Beryllium
date   : 2024-03-06T09:17:35+07:00
slug   : pe-a14-beryllium
categories: [rom]
tags      : [beryllium]
keywords  : [poco f1]
author : 
---

Download Custom Rom Pixel Experience android 14 poco f1 Beryllium.

## How To Install
* Do not try to switch to any other kernel than stock.
* You must format data with given recovery.

### You Must Clean Flash in Following Cases
- You are coming from any other ROM or MIUI
- You are coming from previous Android Version
- You are coming from Non Retrofit Dynamic ROM

### Clean Flash (Coming From a Different ROM)
Clean flash involves formatting data which means you will be loosing data stored in the internal storage of your device, data in SD Card should not be affected. I will not be responsible for any loss of data.
1. Download ROM, recovery files to your computer
2. Reboot the device to bootloader (Fastboot Mode)
3. Flash recovery image by running fastboot flash recovery <path/to/recovery.img> in terminal
4. Reboot to recovery mode
5. Go to main menu > Factory reset > Format data/factory reset > Format data - Back to Main menu
6. Reboot to recovery mode again
7. On your phone [which is in recovery mode], Apply update > Apply from ADB
8. Flash the ROM through ADB sideload by running adb sideload <path/to/rom.zip> in terminal
9. Reboot

### Dirty Flash / Update
There will be no loss of data if everything goes well. Keep backups incase of any mishap. I will not be responsible for any loss of data.
1. Download ROM file to your computer
2. Reboot the device to recovery
3. On your phone [which is in recovery mode], Apply update > Apply from ADB
4. Flash the ROM through ADB sideload by running adb sideload <path/to/rom.zip> in terminal
5. Reboot

## NOTES
- Make sure ADB and fastboot are updated to the latest version. You need fastboot version 28.0.2 or greater.
- Initial Android 14 build
- Dynamic Partition build
- Read Flashing Guide properly
- It's still in beta stage so expect few bugs

## Download Link
[ROM](https://sourceforge.net/projects/uploads10/files/pe/PixelExperience_beryllium-14.0-20240305-0905-BETA.zip/download)

[RECOVERY](https://sourceforge.net/projects/uploads10/files/pe/Recovery/recovery.img/download)


