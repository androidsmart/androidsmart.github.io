---
type   : tutorial
title  : How to Unlock Bootloader And Install Twrp on Xiaomi 13 Fuxi
slug   : ubl-fuxi
date   : 2024-05-27T09:17:35+07:00
categories: [tutorial]
tags      : [ubl]
keywords  : [Unlock bootloader Xiaomi 13]
author : 
---

## Unlocking the Bootloader and Installing TWRP on Xiaomi 13

Disclaimer: Unlocking the bootloader and installing a custom recovery like TWRP will void your device's warranty. Proceed with caution and at your own risk.

**Prerequisites:**

* Xiaomi 13 smartphone
* USB cable
* Computer with ADB and Fastboot drivers installed (Download from the Android Developers website)
* Mi Unlock Tool (Download from the official Xiaomi website)
* TWRP image file for Xiaomi 13 (Download from the official TWRP website or a trusted source)

**Step-by-Step Guide:**

1. **Enable Developer Options:**
   * Go to Settings > About phone > Tap on MIUI version 7 times until you see a message saying "You are now a developer."
   * Go back to Settings > Additional Settings > Developer Options
   * Enable OEM unlocking and USB debugging.

2. **Link your Mi Account:**
   * Go to Settings > Mi Account > Mi Cloud > Mi Unlock Status.
   * Tap on "Add account and device" and follow the instructions to link your Mi Account.
   * Wait for at least 7 days before proceeding to unlock the bootloader.

3. **Unlock the Bootloader using Mi Unlock Tool:**
   * Install and launch the Mi Unlock Tool on your computer.
   * Sign in with the same Mi Account linked to your device.
   * Boot your Xiaomi 13 into Fastboot mode (Power off, then hold Volume Down + Power button simultaneously).
   * Connect your device to the computer using the USB cable.
   * The Mi Unlock Tool should automatically detect your device.
   * Click on "Unlock Now" and follow the on-screen instructions.
   * **Note:** Unlocking the bootloader will erase all data on your device.

4. **Install TWRP Recovery:**
   * Download the TWRP image file for your Xiaomi 13.
   * Rename it to `twrp.img` and place it in the ADB and Fastboot installation folder on your computer.
   * Open a command prompt or terminal window in the ADB and Fastboot folder.
   * Boot your device into Fastboot mode again.
   * Connect your device to the computer.
   * Type the following command and press Enter:
      ```
      fastboot flash recovery twrp.img
      ```
   * Once the flashing process is complete, type the following command and press Enter:
      ```
      fastboot reboot recovery
      ```

Congratulations! You have successfully unlocked the bootloader and installed TWRP recovery on your Xiaomi 13. You can now use TWRP to flash custom ROMs, kernels, mods, and more. Remember to always make a backup of your data before making any modifications to your device.


## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/adb-setup-1.4.3.zip/download)

[Magisk](https://github.com/topjohnwu/Magisk/releases/latest)

[MI unlock Tool](https://en.miui.com/unlock/download_en.html)

[TWRP](https://androidsmart.github.io/cusrom/202405/twrp-fuxi/)


