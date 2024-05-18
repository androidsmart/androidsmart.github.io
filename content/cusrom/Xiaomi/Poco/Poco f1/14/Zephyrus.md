---
type   : cusrom
title  : Download Rom Project Zephyrus Android 14 Poco F1
date   : 2024-03-06T09:17:35+07:00
slug   : zephyrus-a14-beryllium
categories: [rom]
tags      : [beryllium]
keywords  : [poco F1]
author : wahyu6070
---

Download Custom Rom Project Zephyrus android 14 poco f1 Beryllium.

## How to Install
### LINKS
[Recovery image](https://sourceforge.net/projects/projectzephyrus/files/beryllium/images/recovery.img/download)
[Super_empty image](https://sourceforge.net/projects/projectzephyrus/files/beryllium/images/super_empty.img/download)

### IMPORTANT TO NOTE
* Do not try to switch to any other kernel than stock or radioactive v2.
* Do not use any other recovery than Zephyrus recovery or Orangefox Dynamic recovery.
* You must format data with given Zephyrus recovery or Orangefox Dynamic recovery.

#### You must clean flash in following cases
- You are coming from any other ROM or MIUI
- You are coming from previous Android Version
- You are coming from Non Retrofit Dynamic ROM

### Clean Flash (coming from a different ROM)
Clean flash involves formatting data which means you will be loosing data stored in the internal storage of your device, data in SD Card should not be affected. I will not be responsible for any loss of data.
1 Download ROM, recovery and super_empty files to your computer
2 Reboot the device to bootloader (Fastboot Mode)
3 Flash empty super image by running fastboot wipe-super <path/to/super_empty.img> in terminal
4 Flash recovery image by running fastboot flash recovery <path/to/recovery.img> in terminal
5 Reboot to recovery mode
6 Go to main menu > Factory reset > Format data/factory reset > Format data - Back to Main menu
7 Reboot to recovery mode again
8 On your phone [which is in recovery mode], Apply update > Apply from ADB
Flash the ROM through ADB sideload by running adb sideload <path/to/rom.zip> in terminal
9- Reboot

### Dirty Flash / Update
There will be no loss of data if everything goes well. Keep backups incase of any mishap. I will not be responsible for any loss of data.

1 Download ROM file to your computer
2 Reboot the device to recovery
3 On your phone [which is in recovery mode], Apply update > Apply from ADB
4 Flash the ROM through ADB sideload by running adb sideload <path/to/rom.zip> in terminal
5 Reboot

### NOTES
- If you get the following error: fastboot: usage: unknown command wipe-super, make sure ADB and fastboot are updated to the latest version. You need fastboot version 28.0.2 or greater.

## Device Changelog
- Switched to retrofit dynamic partitions
- Fully fixed instagram and yt playback issues
- Added support for google dialer call recording
- Fixed google recorder issues
- Fixed carrier video calling
- Added LDAC codec support
- Improved smoothness and battery backup

## Source Changelog
- Merged Android_14.0.0_r25 (February SPL)
- Added Support Of LinkToWindows
- Imported Pixel CarrierSettings
- Add capability to allow tethering to use VPN upstreams
- Misc Changes and improvements in uI/uX feel
- Fixed Pulse related settings


## Download Link
[Download ROM](https://sourceforge.net/projects/projectzephyrus/files/beryllium/project-zephyrus_beryllium-14.2.1-20240113-0632.zip/download)

