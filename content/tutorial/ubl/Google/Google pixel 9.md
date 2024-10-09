---
type   : tutorial
title  : How to Unlock Bootloader And Install TWRP on Google Pixel 9
slug   : ubl-tokay
date   : 2024-09-20T08:17:35+07:00
categories: [ubl]
tags      : [Tokay]
keywords  : [Unlock bootloader Google Pixel 9]
author :
---


Unlocking the bootloader on your Google Pixel 9 gives you more control over your device, allowing you to install custom ROMs, kernels, and other modifications. However, it's important to remember that this process will **wipe your device**, so **back up your data** beforehand. Also, be aware that unlocking the bootloader might **disable some of Google's AI features**.


## 1. Enable Developer Options and OEM Unlocking

* Go to **Settings > About phone**.
* Tap on **Build number** seven times until you see a message saying "You are now a developer!"
* Go back to **Settings > System > Developer options**.
* Scroll down and enable **OEM unlocking**.
* Confirm your choice.

## 2. Install ADB and Fastboot

* Download the **Android SDK Platform-Tools** from the official Google website.
* Extract the downloaded ZIP file to a location you can easily access (e.g., C:\platform-tools).

## 3. Connect Your Pixel 9 to Your Computer

* Connect your Pixel 9 to your computer using a USB cable.
* Make sure USB debugging is enabled in **Developer options**.

## 4. Boot Your Pixel 9 into Fastboot Mode

* Open a command prompt or terminal window on your computer.
* Navigate to the directory where you extracted the platform-tools (e.g., `cd C:\platform-tools`).
* Turn off your Pixel 9.
* Press and hold the **Power button and Volume Down button** simultaneously until you see the Fastboot Mode screen.

## 5. Unlock the Bootloader

* In the command prompt or terminal window, type the following command and press Enter:

```
fastboot flashing unlock
```

* On your Pixel 9, use the volume buttons to navigate to "Unlock the bootloader" and press the Power button to confirm.

* **Warning:** This will erase all data on your device!

## 6. Reboot Your Pixel 9

* Once the bootloader is unlocked, type the following command and press Enter:

```
fastboot reboot
```

Your Pixel 9 will now reboot with an unlocked bootloader. You can now install custom ROMs, kernels, and other modifications.

## Important Notes

* Unlocking the bootloader will **void your warranty**.
* Some carriers might lock the bootloader, making it impossible to unlock.
* Always **research and follow instructions carefully** when modifying your device.

If you encounter any problems or have further questions, you can refer to the official DerpFest website, XDA Developers forum, or other online resources for assistance.


## Link
[TWRP](/)

[Adb Fastboot](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/adb-setup-1.4.3.zip/download)
