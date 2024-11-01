---
type   : tutorial
title  : How to Unlock Bootloader And Install TWRP Infinix Note 50 Pro Plus
slug   : ubl-infinixnote50proplus
date   : 2024-11-01T09:17:35+07:00
categories: [ubl]
tags      : [infinixnote50proplus]
keywords  : [Unlock bootloader Infinix Note 50 Pro plus]
author :
---


This guide provides instructions on how to unlock the bootloader and install TWRP (Team Win Recovery Project) on your Infinix Note 50 Pro Plus. Unlocking the bootloader allows you to install custom ROMs, kernels, and other modifications on your device. TWRP is a custom recovery that provides a touchscreen interface for installing these modifications.

## Disclaimer

* Unlocking the bootloader will wipe all data on your device. **Back up your important data before proceeding.**
* This process may void your warranty. Proceed with caution and at your own risk.

## Prerequisites

* **Infinix Note 50 Pro Plus** with at least 50% battery charge
* **Windows PC**
* **USB cable**
* **ADB and Fastboot drivers** installed on your PC (download from the Android SDK Platform Tools or Minimal ADB and Fastboot)
* **TWRP image** for Infinix Note 50 Pro Plus (download the latest version from a trusted source like the official TWRP website or XDA forums)

## Steps

**1. Enable Developer Options and OEM Unlocking**

* On your phone, go to **Settings > About Phone**.
* Tap on **Build Number** seven times until you see a message that you are now a developer.
* Go back to **Settings > System > Developer Options**.
* Enable **OEM Unlocking** and **USB Debugging**.

**2. Connect your phone to your PC**

* Connect your phone to your PC using a USB cable.
* Make sure your phone is recognized by your PC.

**3. Unlock the Bootloader**

* Open a command prompt or terminal window on your PC.
* Navigate to the directory where you have ADB and Fastboot installed.
* Type the following command and press Enter:

```
adb devices
```

* This will list the connected devices. If your device is not listed, make sure the drivers are installed correctly.
* Type the following command and press Enter:

```
adb reboot bootloader
```

* Your phone will reboot into bootloader mode (fastboot mode).
* Type the following command and press Enter:

```
fastboot flashing unlock
```

* A warning message will appear on your phone. Use the volume keys to navigate and the power button to select "Unlock the bootloader."
* **This will wipe your device.**

**4. Install TWRP**

* Download the TWRP image for your Infinix Note 50 Pro Plus and rename it to `recovery.img`.
* Place the `recovery.img` file in the same directory as your ADB and Fastboot files.
* In the command prompt or terminal window, type the following command and press Enter:

```
fastboot flash recovery recovery.img
```

* This will flash TWRP to your device.
* Once the flashing process is complete, type the following command and press Enter:

```
fastboot reboot
```

* Your phone will now reboot into TWRP recovery.

**Congratulations!** You have successfully unlocked the bootloader and installed TWRP on your Infinix Note 50 Pro Plus.

## Important Notes

* It is crucial to **research and understand the specific steps and risks involved** for your particular device model before proceeding.
* Always make sure to download TWRP images from trusted sources.
* Some Infinix devices might require different commands or methods to unlock the bootloader. Refer to the official Infinix forums or XDA developers forum for device-specific instructions.
* After installing TWRP, it's recommended to create a backup of your current ROM in case you want to revert to it later.

This guide provides a general overview of the process. If you encounter any issues or have questions, it's recommended to consult online forums and communities like XDA Developers for further assistance.


## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://androidsmart.github.io/etc/202403/adb-fastboot/)

[MAGISK](https://github.com/topjohnwu/Magisk/releases/latest)

[TWRP](https://androidroot.net/cusrom/202411/twrp-infinixnote50proplus/)
