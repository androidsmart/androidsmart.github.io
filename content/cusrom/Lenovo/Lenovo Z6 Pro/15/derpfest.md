---
type   : cusrom
title  : Download Derpfest OS Android 15 Lenovo Z6 Pro
date   : 2024-10-30T09:17:35+07:00
slug   : derpfest-a15-zippo
categories: [rom]
tags      : [zippo]
keywords  : [Lenovo Z6 Pro]
name_rom : derpfest
author : einar
---

Download Custom Rom Derpfest OS android 15 Lenovo Z6 Pro (Zippo)

## Changelog
- Kernel upstream to v4.14.354 openela LTS
- Kernel upstream to LA.UM.9.1.r1-16400-SMxxx0.QSSI14.0
- Initial A15 Release
- Merge October '24 security patch


The Lenovo Z6 Pro is a well-regarded smartphone with robust hardware, making it an excellent candidate for custom ROMs. DerpFest, known for its customizations and close-to-stock Android experience, recently released its version based on Android 15. This guide will walk you through the steps to install DerpFest Android 15 on your Lenovo Z6 Pro.

## Requirements

Unlocked Bootloader: Ensure your Lenovo Z6 Pro bootloader is unlocked.

Custom Recovery: Install a custom recovery like TWRP or OrangeFox.

Backup: Backup all important data.

Battery: At least 50% battery level.

Files Needed: Download the necessary files:

DerpFest ROM (Android 15) for Lenovo Z6 Pro

Latest GApps (optional)

Magisk (optional, for root)



## Step 1: Unlock Bootloader

If you haven’t unlocked the bootloader, you’ll need to do so before proceeding. Unlocking the bootloader will wipe all data, so make sure to back up everything important.

1. Go to Settings > About Phone and tap on Build Number 7 times to enable Developer Options.


2. Go to Developer Options and enable OEM Unlocking and USB Debugging.


3. Connect the phone to your PC and open a command prompt or terminal.


4. Run the command:

adb reboot bootloader


5. Once in bootloader mode, type:

fastboot oem unlock


6. Confirm the unlocking process on your device if prompted.



## Step 2: Install Custom Recovery

To flash the DerpFest ROM, you’ll need a custom recovery. This guide uses TWRP as an example.

1. Download the TWRP image file for Lenovo Z6 Pro.


2. Boot the device into bootloader mode again using:

adb reboot bootloader


3. Flash the TWRP recovery image with:

fastboot flash recovery <recovery-filename>.img


4. Once done, reboot into recovery mode:

fastboot reboot recovery



## Step 3: Flash DerpFest ROM

With TWRP (or your preferred custom recovery) installed, follow these steps:

1. Backup Current ROM: Before flashing, make a full backup in TWRP by going to Backup and selecting System, Data, and Boot.


2. Wipe: Go to Wipe > Advanced Wipe, then select Dalvik/ART Cache, System, Data, and Cache.


3. Flash DerpFest ROM:

Go to Install and locate the DerpFest ROM zip file.

Swipe to confirm flash.



4. (Optional) Flash GApps: If you want Google services, flash the GApps package after flashing DerpFest.


5. (Optional) Root with Magisk: If you want root access, flash the Magisk zip file.



## Step 4: Reboot and Setup

Once everything is installed:

1. Go back to the main menu in TWRP and tap Reboot > System.


2. The first boot may take several minutes.


3. Once booted, go through the setup process and enjoy DerpFest Android 15 on your Lenovo Z6 Pro.



## Troubleshooting Tips

Boot Loop: If your device gets stuck in a boot loop, reboot into recovery, wipe Cache and Data, and try flashing the ROM again.

Missing Google Apps: If you forgot to flash GApps, reboot into recovery and flash the GApps zip.

Issues with Magisk: If the device fails to boot after flashing Magisk, go back to recovery and reflash the ROM without Magisk.


## Conclusion

Installing DerpFest Android 15 on your Lenovo Z6 Pro gives you the latest Android experience with additional customization options. Follow the instructions carefully, and you’ll be set up in no time. Enjoy exploring the new features of Android 15 and customizing your device to your liking!




## Download Link
[Download ROM](https://sourceforge.net/projects/derpfest/files/zippo/)

[Xda](https://forum.xda-developers.com/t/rom-12-1-unofficial-zippo-crdroid-v8-5-26-05-2022.4450677)

[Orangefox retrofix](https://t.me/c/1470548046/957)


