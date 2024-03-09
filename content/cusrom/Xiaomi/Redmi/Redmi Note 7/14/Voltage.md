---
type   : cusrom
title  : Download Rom Voltage OS Android 14 Redmi Note 7 Lavender
date   : 2024-03-09T09:17:35+07:00
slug   : voltage-a14-lavender
categories: [rom]
tags      : [lavender]
keywords  : [redmi note 7]
author : wahyu6070
---

Download Custom Rom Voltage OS android 14 Xiaomi redmi note 7 Lavender

## Device Changelog

### Note
- If you have any issue please tag me in my group
- I will try to fix it in next month's update or hotfix
- Use Latest Gcam, if Older Versions are crashing
- Use Minimal Gapps for Vanilla Builds like Nik Core

### Device Changelog - 14/01/24 :
- Add touch improvements sysprops
- Register health.IChargingControl
- Build Lineage Health HAL
- Add selinux fix for Lineage Health HAL
- Limit screen recorder framerate to 60fps
- prop: Fix screen record lag
- silence OpenGLRenderer log spam

### Device Changelog - 02/01/24 :-
- Added Mi Sound Enhancer aka Dirac
- Nuked unused Powerhint json
- Nuked Hmp related cmdline flags
- Disable OVERRIDE_PRODUCT_COMPRESSED_APEX
- props: Add missing vendor properties
- prop: force Enable latch_unsignaled
- overlay: Disable wallpaper zooming
- overlay: Offload WM shell to another thread
- Register android.hardware.keymaster
- disable Window animation/transition scale
- Remove pro audio capability
- Disable intrusive google service components
- Build sensorservice HAL
- props: Lower background apps limit
- powerhint: nuke GPU MaxFreq
- Build libprotobuf-cpp-lite-v29.so
- nuke Ifaa/mliplay/soter completely
- rootdir: Mount tracefs/debugfs
- nuke liboemcrypto.so ( byebye L1 )
- Revert "Stop shipping 32-bit Zygote"
- Fixed Netflix (OTT) and Mlbb not working

### Device Changelog - 04/12/23 :-
- fstab: Drop AvB completely
- update libstdc++ for Android U
- Stop shipping 32-bit Zygote
- Treat retrofit devices as launching
- update partition size for Android U
- Switch default display color mode to Saturated
- remove vendor.qti.gnss 1.2, 2.0 from manifest
- kernel: Panic to recovery, not bootloader
- Switch to Wifi service AIDL
- Build android.frameworks.sensorservice@1.0.vendor
- Disable sparse image build on all type of fs
- powerhint: Nuke GPUIdleTimer
- Setup permission for powerHAL
- Remove cpuset foreground boost
- compatibility_matrix: update target level to 4
- fingerprint: use libhidlbase-v32 for goodix
- Enable Optimized Power Management
- Rename property to disable MTE in system_server
- prop: Enable apk fs-verity
- Use FUSE passthrough mode by default
- fine tune performance.xml
- gps: Fix misleading indentation
- Ship with prebuilt libprotobuf-cpp-*-3.9.1

## How To Install
Instruction to flash newer ROMs with Retrofit Dynamic Partitions:

(Please Ignore recovery errors at the first installation, they're normal)

### First installation of Retrofit Dynamic Partitions ROMs:
1. Flash recovery with Retrofit Dynamic Partition support ( Twrp is Recommended )
Download ->  [Twrp-Recovery-Dynamic](https://sourceforge.net/projects/lc-dev/files/lavender/TWRP-recovery-erofs-dynamic-partitions-230713.img/download)
(Open twrp.img in recovery, select Recovery partition from list, scroll down if you can't find recovery partition)
2. Enter the newly flashed recovery
3. Wipe system, vendor, cache & metadata partition
4. Flash the ROM (Ignore system mount error)
5. If Vanilla ROM (Reboot to recovery and then flash GApps)
6. Factory Reset (Format data is recommended)
7. Reboot and Enjoy

### Flash ROM Updates
1. Enter recovery
2. Flash the update
3. Wipe dalvik, cache
4. Reboot and Enjoy

### Switch to another Retrofit Dynamic Partitions ROM
1. Enter recovery
2. Flash the ROM
3. Factory Reset (Format data is recommended)
4. Reboot and Enjoy

### Go back to standard partition ROM:
1. Install Standard recovery
2. Wipe system & vendor partition
3. Flash the ROM
4. Factory Reset (Format data is recommended)
5. Change data & cache fs to ext4
6. Reboot and Enjoy

## Notes
- Read Installation Carefully 
- February SP | Vanilla | Enforcing 
- Thanks WhoEmi for base trees 
- Thanks  @im_the_strongest and lord @MrVendettaJA for Testing 


## Download Link
[Download ROM](https://www.pling.com/p/1889410/)

