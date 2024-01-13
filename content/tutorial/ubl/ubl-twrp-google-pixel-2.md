---
type   : tutorial
title  : How to Unlock the Bootloader and Install TWRP on Google Pixel 2
date   : 2023-12-14
slug   : pixel2
categories: [totorial]
tags      : [ubl, twrp]
keywords  : [How to UBL and Install TWRP on Poco X3 Pro]
author : wahyu6070
opengraph:
toc    :
excerpt:
---




Before we begin, let's explain what is bootloader and TWRP and why you need them. Bootloader is a program that runs before the operating system and decides which partition to boot from. By default, the bootloader on Google Pixel 2 is locked, which means you cannot modify the system or install custom ROMs. Unlocking the bootloader will allow you to flash any image you want on your device, but it will also wipe all your data and void your warranty.

TWRP stands for Team Win Recovery Project, which is a custom recovery that replaces the stock recovery on your device. TWRP offers more features and functionality than the stock recovery, such as backing up and restoring your data, flashing ZIP files, wiping partitions, and more. TWRP also has a touch-based interface that makes it easier to use.

## Prerequisites

Before you proceed, you will need to have some prerequisites ready:

- A PC or laptop with Windows, Mac, or Linux
- A USB cable to connect your device to the PC
- ADB and Fastboot tools installed on your PC
- TWRP image and ZIP files for Google Pixel 2
- USB debugging enabled on your device
- A backup of your important data

## Unlocking the Bootloader

To unlock the bootloader on your Google Pixel 2, follow these steps:

1. Connect your device to the PC with the USB cable and open a command prompt or terminal window in the same folder where you have the ADB and Fastboot tools.
2. Type the following command to reboot your device into fastboot mode:

```bash
adb reboot bootloader
```

3. Once your device is in fastboot mode, type the following command to unlock the bootloader:

```bash
fastboot flashing unlock
```

4. You will see a confirmation screen on your device. Use the volume keys to select "Unlock the bootloader" and press the power button to confirm.
5. Wait for the process to finish and your device will reboot. You have successfully unlocked the bootloader on your Google Pixel 2.

## Installing TWRP

To install TWRP on your Google Pixel 2, follow these steps:

1. Rename the TWRP image file to `twrp.img` and the TWRP ZIP file to `twrp.zip` and move them to the same folder where you have the ADB and Fastboot tools.
2. Connect your device to the PC with the USB cable and open a command prompt or terminal window in the same folder.
3. Type the following command to temporarily boot TWRP on your device:

```bash
fastboot boot twrp.img
```

4. Wait for TWRP to boot on your device and tap the "Install" button on the main menu.
5. Browse to and tap on the `twrp.zip` file and swipe the slider to confirm the installation.
6. Wait for TWRP to be installed on both slot A and B of your device and tap the "Reboot System" button when it appears.
7. You have successfully installed TWRP on your Google Pixel 2.

## Conclusion

You have learned how to unlock the bootloader and install TWRP on your Google Pixel 2. Now you can enjoy the benefits of having a custom recovery and flash any mod or ROM you want on your device. However, be careful and always make a backup before you make any changes to your system. Happy modding!

