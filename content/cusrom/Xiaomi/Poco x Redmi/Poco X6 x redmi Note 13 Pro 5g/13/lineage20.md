---
type   : cusrom
title  : LineageOS 20 Android 13 Redmi Note 13 Pro 5g
date   : 2024-04-17T09:17:35+07:00
slug   : los20-a14-garnet
categories: [rom]
tags      : [garnet]
keywords  : [redmi note 13 pro]
author : wahyu6070
---

Download Custom Rom Lineage 20 android 13 Xiaomi redmi note 13 pro Garnet.


## How To Install
Note 1: The lineage recovery does not have working touch screen so you need to use volume buttons to navigate arround
Note 2: You need to be miui 14 rom for your respective region in case you are you may skip step 4 to 6

1. Flash the provided recovery image via fastboot using "fastboot flash recovery recover.img"
2. Reboot to recovery using either volume + and power button combo or via fastboot command
3. Navigate to Apply Update  > Apply from ADB with volume button and select with power button
4. adb sideload the fw zip using "adb sideload fw_garnet*.zip" 
5. Once adb sideload finishes reboot back into recovery
6. Navigate to Apply Update  > Apply from ADB 
7. adb sideload the lineage zip using "adb sideload lineage-20.0-*-garnet.zip" 
8. Factory reset/format data
9. Reboot to system

In case you want to use your own google apps package MindTheGapps is recomended, you can install this by rebooting back into recovery after step 7 

## Changelog
14 April, 2024 oleh Adarsh Grewal

- Safteynet passing ootb
- Enforcing Selinux
- Added Support for smart charging
- Fixed offline charging
- Builds a bunch more services from source
- Stuff and Things

GMS: Added a bunch more google apps like phone, contacts gboard etc


## Download Link
[ROM](https://sourceforge.net/projects/garnetrandom/files/LOS/20240411/)

[FIRMWARE](https://sourceforge.net/projects/garnetrandom/files/FW/)

