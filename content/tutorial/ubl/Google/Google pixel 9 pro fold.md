---
type   : tutorial
title  : How to Unlock Bootloader And Install TWRP on Google Pixel 9 pro Fold
slug   : ubl-comet
date   : 2024-11-03T08:17:35+07:00
categories: [ubl]
tags      : [comet]
keywords  : [Unlock bootloader Google Pixel 9 Pro Fold]
author :
---

Unlocking the bootloader on your Google Pixel 9 Pro Fold allows you to install custom software like crDroid ROM. Here's how to do it:

Unlocking the bootloader on your Google Pixel 9 Pro Fold allows you to install custom software like crDroid ROM. Here's how to do it:

## Important Notes

* **Back up your data!** Unlocking the bootloader will wipe your device.
* This process may affect some of Google's AI features on the Pixel 9 series.
* Proceed with caution and at your own risk.

## Steps

1. **Enable Developer Options:**
   * Go to **Settings > About phone**.
   * Tap on **Build number** seven times until you see a message saying "You are now a developer!"

2. **Enable OEM Unlocking and USB Debugging:**
   * Go back to **Settings > System > Developer options**.
   * Scroll down and enable **OEM unlocking**.
   * Enable **USB debugging**.

3. **Install Android SDK Platform-Tools:**
   * Download the Android SDK Platform-Tools from the official website.
   * Extract the downloaded zip file to a location on your computer.

4. **Connect your Pixel 9 Pro Fold to your computer:**
   * Use a USB cable to connect your phone to your computer.
   * Make sure your phone is recognized by your computer.

5. **Boot into Fastboot Mode:**
   * Open a command prompt or terminal window on your computer.
   * Navigate to the directory where you extracted the platform-tools.
   * Turn off your phone.
   * Press and hold the **Power button and Volume Down button** simultaneously until you see the Fastboot Mode screen.

6. **Unlock the Bootloader:**
   * In the command prompt/terminal window, type the following command and press Enter:
     ```
     fastboot flashing unlock
     ```
   * On your phone, use the volume keys to navigate to "Unlock the bootloader" and press the Power button to confirm.
   * **Your phone will now wipe all data and unlock the bootloader.**

7. **Reboot your device:**
   * Once the process is complete, type the following command and press Enter:
     ```
     fastboot reboot
     ```

Your Google Pixel 9 Pro Fold now has an unlocked bootloader! You can now install custom ROMs like crDroid.

## Remember

* Unlocking the bootloader might void your warranty.
* Always proceed with caution and follow instructions carefully.
* If you encounter any issues, refer to online forums or communities for assistance.


## Link
[TWRP](https://androidroot.net/cusrom/google/google-pixel-9-pro-fold/)

[Adb Fastboot](https://androidroot.net/etc/202403/adb-fastboot/)
