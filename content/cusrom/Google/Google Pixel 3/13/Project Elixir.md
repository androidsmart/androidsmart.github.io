---
type   : cusrom
title  : Download Project Elixir OS Android 13 Google Pixel 3 (blueline)
date   : 2024-11-24
slug   : projectelixir-a13-blueline
categories: [rom]
tags      : [blueline]
keywords  : [Google Pixel 3]
author :
---

Download Custom Rom Project Elixir OS android 13 Google Pixel 3 (Blueline).

##Installation
Installation Guide For Project Elixir on Crosshatch

- First Time Install / Clean Flash from Another ROM
- Reboot to Fastboot
- Flash boot.img to all slot A/B. Type "fastboot flash boot --slot all (namerom.zip)" (if you dont have a boot.img, extract with FastbootEnhance) on here
- Switch to Recovery Mode using volume up
- Go to "Format Data - Erase Data" (Requires full backup of internal storage) ignore any error
- Go to "Apply Update - Adb Sideload"
- Flash the ROM
- Reboot to System
### Dirty Flash
- Reboot to Fastboot
- Switch to Recovery Mode with volume up
- Go to "Apply Update - Adb Sideload"
- Flash the ROM
- Reboot to System

### Important
If you get error when download OTA for Dirty Flash, you can download via Website and using alternative method from Dirty Flash

## Note
- If you are coming from A12 to A13 clean flash is compulsory
- if any problems, contact me here

## Changelog
- User Build
- Selinux is Enforcing
- CTS passes and banking apps working
- Update display vendor packages
- b1c1: drop android.hardware.tetheroffload.config manifest
- b1c1: Modify kgsl idle timer to 58ms
- b1c1: overlay: Switch to AVC 3.1 for screen recording
- b1c1: overlay: Disable gms components for better WiFi speeds
- b1c1: Optimize Launcher3 and Settings for speed
- b1c1: props: add smoother scrolling and better responsivenes
- b1c1: props: Disable sf EGL Image tracking
- b1c1: rro_overlays: Increase 5 GHz network signal tolerance
- b1c1: switch to Vulkan UI
- b1c1: vendor.prop: set HWUI Render to 20
- b1c1: wifi: Add parameters for Hotspot 2.0
- b1c1: wifi: Disable RX wakelock feature
- b1c1: wifi: Disable firmware log
- b1c1: wifi: Disable TDLS offchannel
- b1c1: wifi: Enable Optimized Power Management
- b1c1: wifi: Relax WiFi re-association RSSI threshold
- b1c1: wifi: Switch gEnablePowerSaveOffload to 5
- b1c1: wifi: smarter decisions on whether to use a 2- or 5Ghz AP
- revert: b1c1: Switch cpu variant to kryo 385
- Misc. Fixes and Improvements

## Download Link
[Download ROM](https://sourceforge.net/projects/project-elixir/files/thirteen/blueline/)
