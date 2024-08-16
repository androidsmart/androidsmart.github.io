---
type   : tutorial
title  : How to Unlock the Bootloader and Install TWRP Asus Rog Phone 1
date   : 2024-03-09T09:17:35+07:00
slug   : ubl-asusrog1
categories: [ubl]
tags      : [ubl, twrp]
keywords  : [ubl rog phone 1]
author : wahyu6070
---



## Prerequisites
- Backup all personal data on your phone to prevent data loss.
- Ensure your device is charged to at least 70%.
- Download and install ADB and Fastboot tools on your PC.

## Unlocking the Bootloader
1. Go to **Settings > System > About phone** and tap on **Build number** seven times to enable **Developer options**.
2. Return to the main **Settings** menu, navigate to **Developer options**, and enable **OEM unlocking** and **USB debugging**.
3. Connect your phone to your PC using a USB cable.
4. Open a command prompt or terminal window in your ADB installation directory.
5. Enter the following command to reboot into the bootloader:
   ```
   adb reboot bootloader
   ```
6. Once in bootloader mode, type:
   ```
   fastboot oem unlock
   ```
   Follow the on-screen instructions to unlock the bootloader.

## Installing TWRP
1. Download the TWRP image for the Asus ROG Phone 1.
2. Reboot your phone into bootloader mode as before.
3. Flash TWRP to your device by typing:
   ```
   fastboot flash recovery twrp.img
   ```
   Replace `twrp.img` with the actual file name of the TWRP image.

## Booting into TWRP
- To boot into TWRP, hold the **Volume Up** and **Power** buttons simultaneously while your device starts up.

## Rooting (Optional)
- If you wish to root your device, you can flash Magisk via TWRP for root access.


## Download Link
[Ubl apk](https://t.me/wahyu6070files/29)

[twrp](/)
