---
type   : tutorial
title  : How to Unlock Bootloader And Install TWRP on Google Pixel 9 pro
slug   : ubl-caiman
date   : 2024-11-03T08:17:35+07:00
categories: [ubl]
tags      : [caiman]
keywords  : [Unlock bootloader Google Pixel 9 Pro]
author :
---

Unlocking the bootloader on your Google Pixel 9 Pro gives you more control over your device, allowing you to install custom ROMs like crDroid, kernels, and other modifications. However, it's important to remember that this process will **wipe your device**, so **back up your important data** beforehand.

Here's a step-by-step guide on how to unlock the bootloader on your Pixel 9 Pro:

**1. Enable Developer Options and OEM Unlocking**

*   Go to **Settings > About phone**.
*   Scroll down and tap on **Build number** seven times until you see a message saying "You are now a developer!"
*   Go back to the main Settings menu and you'll see a new option called **Developer options**. Tap on it.
*   Scroll down and enable **OEM unlocking**.

**2.  Boot into Fastboot Mode**

*   Connect your Pixel 9 Pro to your computer using a USB cable.
*   Power off your phone.
*   Press and hold the **Power button and Volume Down button** simultaneously until you see the Fastboot Mode screen.

**3.  Unlock the Bootloader using Fastboot Commands**

*   On your computer, open a command prompt or terminal window and navigate to the directory where you have the Android SDK platform-tools installed.
*   Type the following command and press Enter:

```
fastboot flashing unlock
```

*   On your phone, use the volume buttons to navigate to "Unlock the bootloader" and press the Power button to confirm.

*   Your phone will now unlock the bootloader and **wipe all data**. This process may take a few minutes.

**4.  Reboot your phone**

*   Once the process is complete, your phone will reboot. You'll need to go through the initial setup process again.

## Important Notes

*   Unlocking the bootloader will **void your warranty**.
*   Unlocking the bootloader may **prevent you from using some of Google's AI features**.
*   Make sure you have the **latest USB drivers** installed on your computer.
*   If you encounter any issues, refer to the **official Google Pixel support website** or the **XDA Developers forum** for assistance.


By following these steps, you can successfully unlock the bootloader on your Google Pixel 9 Pro and start exploring the world of custom ROMs and modifications. Remember to proceed with caution and always back up your data before making any changes to your device.


## Link
[TWRP](https://androidroot.net/cusrom/google/google-pixel-9-pro/)

[Adb Fastboot](https://androidroot.net/etc/202403/adb-fastboot/)
