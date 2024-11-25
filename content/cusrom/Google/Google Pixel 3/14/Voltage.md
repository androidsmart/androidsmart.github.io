---
type   : cusrom
title  : Download Voltage OS Android 14 Google Pixel 3 (blueline)
date   : 2024-11-25
slug   : voltage-a14-blueline
categories: [rom]
tags      : [blueline]
keywords  : [Google Pixel 3]
author :
---

Download Custom Rom Voltage OS android 14 Google Pixel 3 (Blueline).


## Install
### Prerequisites
1. Must have stock Android 12 on both slots. 
2. Unlocked Bootloader.

### Instructions
1. Settings -> Developer Options -> Turn USB Debugging on. 
2. adb reboot bootloader
3. fastboot flash boot voltage-3.3-blueline-20240427-0241-OFFICIAL-boot.img
5. Format data.
6. Apply update from adb. 
7. adb sideload voltage-3.3-blueline-20240427-0241-OFFICIAL.zip
8. Reboot to System. (Skip this step if GApps are needed)

### Optional
1. Reboot to Recovery.
2. Apply update from adb.
3. adb sideload <gapps.zip>
4. Reboot to System. 

## Download Link
[Download ROM](https://sourceforge.net/projects/voltage-os/files/blueline/)
