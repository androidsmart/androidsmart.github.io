---
type   : cusrom
title  : Project Matrixx OS Android 14 For Xiaomi 14 Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X
slug   : matrixx-a14-hydn
date   : 2024-11-02
name_rom : matrixx
categories: [rom]
tags      : [hydn]
keywords  : [ Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X]
---

Download Custom Rom Project Matrixx OS Android 14 For Xiaomi  Mi 11i | Redmi K40 Pro | Redmi K40 Pro+ | Mi 11X (hydn).

## Changelog
* Relax Refresh rate timers
* Downgrade zram to 2GB
* switch to lz4 for zram
* Disable proximity usage during doze
* Disable lift to check phone by default
* move citsensorservice to background cpuset
* configure TCP buffer sizes per network type
* configure wifi TCP buffer sizes
* Switch to AOSP WFD (to fix cast)
* Force disable low ram config
* Import Diag HAL
* Move to Xiaomi IR AIDL
* Drop SDM LiveDisplay service
* Switch to common lineage Powershare hal
* Update perf configs from AOSPA
* perf: Disable IOP
* perf: Remove ro.vendor.at_library
* perf: Disable gesture fling boost 
* Use foreground uclamp for hwcomposer
* Use foreground cpuset/uclamp for gralloc
* Use HintManager for HWUI
* Use task_profiles from ROM source
* Remove order preference for Thermal Profiles
* Fixed lag in pip mode
* Disable pocket mode lock
* Enabled force LTE_CA toggle

## Install
### Clean Flash
- Download and boot into Ofox/TWRP image using
- fastboot boot recovery.img OR fastboot boot [BOOT]3.7.0_12-RedmiK40Pro[Pro+]-Mi11XPro-Mi11i_v8.0_A13-haydn-skkk.img
- Wipe Data, Metadata, Cache, Dalvik-Cache
- Copy ROM to Internal Storage and Flash ROM & Recovery OR Sideload ROM
- Reboot Recovery (Not Needed if using TWRP A14 (Skkk 8.0) you can directly format data)
- Format Data
- Reboot System
### Dirty Flash
- Reboot Recovery
- Flash ROM & Recovery
- Reboot System

### Dirty Flash
- After flashing the ROM it might show some errors but it's fine
- TWRP doesn't have a flashable zip, just use the "Automatically reflash TWRP after flashing ROM" option

## Notes
- Synced with latest source
- QPR3 September security patch
- Signed build | SafetyNet pass by default 
- Use A14 TWRP for decryption..


## Download Link
[ROM](https://sourceforge.net/projects/the-haydn-project/files/Matrixx-14/)

[Link 2](https://www.pling.com/p/2082602/)


[TWRP](https://t.me/Mi11XProOfficial/336929)
