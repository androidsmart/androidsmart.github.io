---
type   : tutorial
title  : How to Unlock Bootloader And Install Twrp on Xiaomi 14 houji
slug   : ubl-houji
date   : 2024-04-04T09:17:35+07:00
categories: [tutorial]
tags      : [ubl, twrp]
keywords  : [Unlock bootloader Xiaomi 14]
author : wahyu6070
---

Unlocking the bootloader on your Xiaomi 14 allows you to root your device, install custom ROMs, and perform other advanced tasks. However, it's important to note that this process may void your warranty and carries certain risks. Always back up your data before proceeding.

## Prerequisites

Before you start, ensure you have the following:

- A Xiaomi 14 smartphone with a fully charged battery.
- A Windows computer with ADB and Fastboot tools installed.
- A Mi Account that is at least 30 days old.
- The Mi Unlock Tool downloaded to your computer.

## Steps to Unlock the Bootloader

1. **Enable Developer Options and USB Debugging**
   - Go to `Settings` > `About Phone` and tap on `MIUI Version` 7 times to enable Developer Options.
   - In `Settings` > `Additional Settings` > `Developer Options`, enable `OEM Unlocking` and `USB Debugging`.

2. **Install ADB and Fastboot Tools**
   - Download the 15 Seconds ADB Installer⁶.
   - Run the installer and follow the prompts to install ADB and Fastboot on your computer.

3. **Create or Log in to Your Mi Account**
   - If you don't have a Mi Account, create one here.

4. **Apply for Bootloader Unlocking Permission**
   - Open the Xiaomi Community App and navigate to `Me` > `Set Up` > `Change Region` to Global.
   - Go to `Me` > `Unlock Bootloader` > `Apply for Unlocking`.

5. **Connect Your Mi Account to Your Device**
   - In `Settings` > `Additional Settings` > `Developer Options`, select `Mi Unlock Status` and add your account and device.

6. **Unlock the Bootloader**
   - Download the Mi Unlock Tool from the official website⁸.
   - Boot your Xiaomi 14 into Fastboot mode by holding the `Volume Down` + `Power` buttons.
   - Connect your device to your computer using a USB cable.
   - Run the Mi Unlock Tool and follow the on-screen instructions to unlock the bootloader.


# Installing TWRP on Xiaomi 14

TWRP (Team Win Recovery Project) is a custom recovery that allows you to install custom firmware, make backups of your current system, and more. Here's how to install TWRP on your Xiaomi 14.

## Prerequisites

- Unlocked bootloader on Xiaomi 14.
- ADB and Fastboot installed on your computer.
- TWRP image file for Xiaomi 14.
- Backup of your important data.

## Installation Guide

1. **Boot into Fastboot Mode**
   - Turn off your Xiaomi 14.
   - Press and hold the `Volume Down` + `Power` button until the Fastboot logo appears.

2. **Connect Your Device to Your PC**
   - Use a USB cable to connect your Xiaomi 14 to your computer.

3. **Open Command Prompt or Terminal**
   - Navigate to the folder where ADB and Fastboot are installed.

4. **Check Fastboot Connection**
   - Enter `fastboot devices` in the command prompt or terminal.
   - Your device should be listed.

5. **Flash TWRP**
   - Enter `fastboot flash recovery twrp.img` (replace `twrp.img` with the actual TWRP image filename).

6. **Boot into Recovery Mode**
   - Use the key combination `Volume Up` + `Power` button to boot into TWRP recovery.

And that's it! You've successfully installed TWRP on your Xiaomi 14. Remember, this is a general guide; for device-specific instructions and the TWRP image file, please refer to the official TWRP website or your device's specific resources¹.


## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/adb-setup-1.4.3.zip/download)

[Magisk](https://github.com/topjohnwu/Magisk/releases/latest)

[MI unlock Tool](https://en.miui.com/unlock/download_en.html)

twrp is coming soon

