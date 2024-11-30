---
type   : cusrom
title  : Download Proton aosp OS Android 11 For Google Pixel 3a XL (bonito)
date   : 2024-11-21
slug   : proton-a11-bonito
name_rom : proton
categories: [rom]
tags      : [bonito]
keywords  : [Google Pixel 3a XL]
author :
---

Download Custom Rom Proton AOSP OS android 11 Google Pixel 3a XL (Bonito).

## Changes from previous builds:
 - Microg integrated.
 - No more carrier services crashes.
 - Cleaned up tree.
 - Fixed vulkan for sargo/bonito (broken in AOSP trees for us, not for other pixels).
 - Switched to skiavk rendering backend. This offers lower latency for us, and slightly reduced jitter.

## Notes
 - The kernel is stock prebuilt. Yes, you can flash gulch on it and it will run well.
 - Yes, gcam 8 does install/run on it.

## Installation
- Reboot to bootloader.
- fastboot erase userdata
- fastboot flash boot boot.img
- fastboot flash dtbo dtbo.img
- fastboot flash vbmeta vbmeta.img
- In bootloader, select Recovery with volume keys, and boot to it.
- Using volume keys and power button in recovery: Go to adb sideload, and run: adb sideload aosp_sargo-ota-eng.cody.zip
- Reboot.
- Open Microg, log into google account, enable google device registration, google cloud messaging, and google safetynet. Also recommend enabling Nominatim in Location Modules along with Deja Vu Location Service at the least (you have control over what location services you use).
- If you want apps to be capable of seeing your google account, go to Settings->Accounts->Your Google Account->Account Preferences-> Enable "Allow apps to find accounts."
- Reboot and enjoy. Aurora Droid is for fdroid, and Aurora Store is for play store. I recommend changing installation method to root if you root with magisk.

## Rooting
- Download https://raw.githubusercontent.com/topjohnwu/magisk_files/canary/app-debug.apk
- Push boot.img from here to your device.
- Patch boot.img in magisk.
- Pull /sdcard/Download/magisk_patched.img from your device.
- Reboot to bootloader and: fastboot flash boot magisk_patched.img

## Download Link
[Gapps](https://t.me/pixel3aupdates/233)

[Vanilla](https://t.me/pixel3aupdates/228)

