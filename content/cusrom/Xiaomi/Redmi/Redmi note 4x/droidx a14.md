---
type   : cusrom
title  : Download Rom DroidX Android 14 Redmi Note 4x mido
date   : 2024-03-05T09:17:35+07:00
slug   : droidx-a14-mido
categories: [rom]
tags      : [mido]
keywords  : [redmi note 4x]
author : wahyu6070
---

Download Custom Rom DroidX android 14 for xiaomi redmi note 4x.

## Changelog
- Initial DroidX-UI v2.0 based on Android 14 release.
- Based on latest February security patch.
- DXUI exclusive wallpaper added by default.
- Added DroidX-UI Launcher (based on Launcher3 with customisations).
- Added About UI based on A13 DXUI concept.
- Three finger screenshots gesture is implemented.
- Added omnijaw lockscreen customisations.
- Added network traffic meter support.
- Added support for disable ripple effect on lockscreen.
- Added App Lock support.
- Added App Clone support.
- Double tap to sleep on status bar.
- Double tap to sleep on lock screen.
- Ambient music: pulse on new music tracks and Now Playing info.
- configure lock screen media artwork blur level.
- Allow to enable Lock screen Media Art.
- Integrate Google Lens into Screenshot UI.
- Add delete action chip intent into Screenshot UI.
- Allow overriding volume panel location.
- Add optional haptic feedback to volume panel. 
- Make the volume dialog expandable.

## Notes
- Only Dirty flash if you are coming from previous droidx official encrypted build if coming from unofficial or other builds better do a clean flash
- FBE (File based encryption) enabled by default *
- NON - RETROFIT BUILD. Flash or Update as usual, with normal method.
- * use updated TWRP (https://github.com/zeelog/device_mido_twrp/releases/tag/3.0)
- Use zeelog's lineageos method to flash the rom or follow the following steps given here: [Guide](https://raw.githubusercontent.com/NRanjan-17/Pixel-Experience-Releases/main/install_guide.md)
- Clean Flash Recommended
- Always dirty flash at your own risk.
- If your device bootloops, revert to an older build that boots, backup your stuff and do a clean flash.

## Install
 <img src="https://raw.githubusercontent.com/DroidX-UI-Devices/Official_Devices/13/banners/install.png" />
 
Android 14 Release Notes/Installation Guide


### 1.Clean Flash
---------------
• Clean flash is mandatory: you are required to backup all of your existing data to your computer or your preferred cloud service and avoid using nandroid backup.
Seedvault backup not working yet

### 2.Flash TWRP
-------------
• Flash the new TWRP Recovery made by Zeelog : ( Mandatory)due to various changes in fstab file and encryption implementation, you are required to flash the new TWRP of which the link is undermentioned 

[Link](https://github.com/zeelog/device_mido_twrp/releases/download/3.0/twrp_3.7.0_12-0-mido.img)

### 3.Wipe and format Device ( Both are different)
-----------------------------------------------
• After you flash and boot into the new TWRP recovery, format data and reboot to the recovery again. 
Now, wipe all the partitions (i.e. system, vendor, data, internal storage). Wiping Internal might throw an error because of missing /data/media/ which is okay, reboot to recovery again.  
This format data and wiping of other partitions is required only once every clean flash.
NB : encryption is now enabled by default and that is why a clean flash would cost you a data format.

### 4.Flash ROM and Gapps
---------------------
*To use internal storage for transferring files from PC 

From TWRP > tap Advanced > Terminal > run command:
mkdir -p /data/media/0/

• Copy the latest releases DroidX-UI Android 13 rom to your internal storage/otg media/sd card etc. 
Flash the ROM using the usual method.

### 5.Go Back 
---------
If you want to go back to the previous ver of Android. 
You need to flash your old recovery and Wipe and Format device ,Flash ROM again.

---------------------------------------------

* FOR Video Guide: https://t.me/LOSRN4/284718

---------------------------------------------

## Download Link
[Gapps](https://t.me/wahyu6070files/17?single)

[Vanilla](https://t.me/wahyu6070files/17?single)


