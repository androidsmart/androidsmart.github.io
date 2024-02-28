---
type   : cusrom
title  : Download Cherish OS Android 13 | Poco M4 Pro 4G / Redmi Note 11S 4G
slug   : cherish-a13
date   : 2024-02-28T09:17:35+07:00
categories: [rom]
tags      : [pocom4pro]
keywords  : [poco m4 pro]
---


Download Custom Rom Cherish Android 13 Poco M4 Pro 4G / Redmi Note 11S 4G


## Source Changelog

- Sep security patch merged
- Used Laucher3 in gapps build
- Added Smart 5G service 
- Added Lockscreen Weather styles
- Added QS battery customizations
- Added sensor block package list configurable
- Added Sensor block per-package switch
- Added Bring back support for Parallel space
- Fixed Biometric dialog corner radius 
- Fixed quickswitch with gesture pill disabled 
- Fixed class cast exception when animating play/pause button
- Fixed logspam from AppIdleHistory on first boot 
- Fixed NullPointerException during bluetooth turning off 
- Fixed custom seekbar pref disabled color views 
- Improved the system

## Device Changelog
### September 30, 2023
- Fixed Sound cracked (yo oss audio in fleur is shit)
- Fixed In-call bug 
- Always report max cpu freq to unity tasks
- Decreased kernel logs 
- Increase 5 GHz network signal tolerance 
- Switch to new AIDL memtrack HAL 
- Enable auto-power-save modes 
- tuning SchedTune, Schedutil, cpusets and etc 
- Switch Thermal 1.0 to MTK Thermal 2.0
- Add FMRadio
- Many more under the hood changes and optimizations

### August 27, 2023
- Enable LTE_CA workaround 
- Remove frozen and unfrozen cgroup 
- Disable CPU hotplug data parsing on mi_thermald
- Add HDR and AOSP color props
- Many more under the hood changes and optimizations
- And etc..

## Notes
- SELinux: enforcing
- Vanilla Build (MindTheGapps Recommended)
- Use Latest Firmware MIUI 14 Android 13 
- Please make sure that you made IMEI backup, you are on right recovery and right firmware version.


## How to Flash rom (Normal Step):
- Flash twrp-3.7.0_12-3-fleur.img  (fastboot flash boot twrp-3.7.0_12-1-fleur.img)
- Reboot to recovery
- Format Data
- Flash ROM
- Flash GAPPS (optional)
- Flash FW(optional) 
- Flash current TWRP or Flash recovery ramdisk twrp-3.7.0_12-3-fleur.img 
- Reboot to recovery (optional)
- Flash Magisk (optional)
- Reboot system

## How To dirty flash from old rom (or u want to update with new version)? (Important! Must be with the same rom)
- Reboot to recovery
- Flash ROM
- Flash GAPPS (optional) 
- Flash FW(optional)
- Flash Current TWRP or Flash recovery ramdisk twrp-3.7.0_12-3-fleur.img 
- Reboot Recovery
- Flash Magisk (optional)
- Reboot system

=======================================
If u want to try use DFE (Disable Force Encryption), here.
WARNING! DFE NOT SUPPORTED FOR LINEAGE BASED ROM LIKE:
RisingOS,crDroid,AlphaDroid,Ofc LineageOS, And many more..
=======================================

## How to flash with DFE? (ur phone will unencrypted and u can change rom without format data)
- Flash twrp-3.7.0_12-3-fleur.img   (fastboot flash boot twrp-3.7.0_12-1-fleur.img)
- Reboot to recovery
- Format Data
- Flash ROM
- Flash GAPPS (optional)
- Flash FW(optional)
- Format Data 
- Flash current TWRP or Flash recovery ramdisk twrp-3.7.0_12-3-fleur.img 
- Reboot to Recovery
- Flash DFE  
- Flash Magisk (optional)
- Reboot system

If u success flash rom with dfe, now u can flash rom without format data yey!
How to Dirty flash? (flash rom without format data)
- Reboot to recovery
- Wipe Data/Factory Reset (NOT FORMAT DATA!)
- Flash ROM
- Flash FW(optional)
- Flash GAPPS (optional)
- Flash current TWRP or Flash recovery ramdisk twrp-3.7.0_12-3-fleur.img 
- Reboot to recovery
- Flash DFE 
- Flash Magisk (optional)
- Reboot to system

warning! if you do dirty flash or flash rom without format data, must flash DFE! (or your fleur won't boot and encrypted)

Notes: Recommended to Use TWRP Latest by ShazuXD hehe 

## Download Link
[ROM and boot-img](https://sourceforge.net/projects/gabutbuild/files/fleur/crdroid-14/)

[TWRP](https://github.com/shazu-xd/releases/releases/download/dev/twrp-3.7.0_12-3-fleur.img)

[DFE](https://t.me/gabutuniverse/408)
