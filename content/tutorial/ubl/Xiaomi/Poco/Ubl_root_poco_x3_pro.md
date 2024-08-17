---
type   : tutorial
title  : How to UBL and Install TWRP on Poco X3 Pro
date   : 2023-12-08T09:17:35+07:00
slug   : pocox3pro
categories: [magisk module]
tags      : [ubl, module]
keywords  : [How to UBL and Install TWRP on Poco X3 Pro]
author : 
---



Poco X3 Pro is a powerful smartphone that offers great performance and features at an affordable price. However, some users may want to customize their device further by installing custom ROMs, kernels, mods, or root access. To do that, they need to unlock the bootloader (UBL) and install a custom recovery such as TWRP.

## What is UBL?

UBL stands for unlock bootloader, which means breaking the security of the device's system. By default, the bootloader is locked to prevent unauthorized modifications and protect the device's warranty. However, if you want to install custom ROMs or root your device, you need to unlock the bootloader first. This will allow you to flash any files or images to your device using fastboot or recovery mode.

## What is TWRP?

TWRP stands for Team Win Recovery Project, which is a custom recovery that replaces the stock recovery of your device. TWRP offers more features and functions than the stock recovery, such as backup and restore, wipe, mount, install, advanced settings, and more. TWRP also supports touch interface and themes, making it easier and more convenient to use.

## How to UBL Poco X3 Pro?

To unlock the bootloader of your Poco X3 Pro, you need to follow these steps:

1. Enable USB debugging and OEM unlocking on your device. To do that, go to Settings > About phone and tap on MIUI version 7-10 times until you see a message saying "You are now a developer". Then, go to Settings > Additional settings > Developer options and enable USB debugging and OEM unlocking.
2. Download and install Mi Flash Unlock tool and Xiaomi/Poco drivers on your computer. You can find the links in the web search results¹².
3. Launch Mi Flash Unlock tool and log in with the same Mi account that you use on your device. Make sure you run the tool as administrator.
4. Turn off your device and boot into fastboot mode by holding the volume down and power buttons together until you see the Mi Bunny logo.
5. Connect your device to your computer using a USB cable. If the connection is successful, the tool will show "Phone connected".
6. Click on "Unlock" and wait for the process to finish. You may need to confirm the unlock on your device's screen. The tool will show "Unlocked successfully" when it's done.

## How to Install TWRP on Poco X3 Pro?

To install TWRP on your Poco X3 Pro, you need to follow these steps:

1. Download the TWRP image file for your device. You can find the link in the web search results². The recommended TWRP for Poco X3 Pro is Arrow recovery from Arrow OS ROM.
2. Rename the downloaded file to "twrp.img" and copy it to the same folder where you installed Mi Flash Unlock tool.
3. Boot your device into fastboot mode again and connect it to your computer.
4. Open a command prompt window in the folder where you copied the twrp.img file and type the following command: `fastboot flash recovery twrp.img`
5. Wait for the flashing process to finish and then type the following command: `fastboot reboot`
6. As soon as your device reboots, press and hold the volume up and power buttons together to boot into TWRP recovery. You may need to swipe to allow modifications on your first boot.

## How to Root Poco X3 Pro with Magisk?

To root your Poco X3 Pro with Magisk, you need to follow these steps:

1. Download the Magisk zip file and copy it to your device's internal storage. You can find the link in the web search results³.
2. Boot your device into TWRP recovery and tap on "Install".
3. Navigate to the folder where you copied the Magisk zip file and select it. Swipe to confirm the installation.
4. Once the installation is done, tap on "Reboot System".
5. Check if you have the Magisk app on your home screen. If yes, congratulations, your device is now rooted!

## Conclusion

This article has shown you how to UBL and install TWRP on Poco X3 Pro, as well as how to root it with Magisk. You can now enjoy the benefits of having a custom recovery and root access on your device, such as installing custom ROMs, kernels, mods, or tweaking your device's settings. However, you should also be careful and responsible with your device, as unlocking the bootloader and rooting may void your warranty, trigger safety net, or cause instability or damage to your device or data. Always backup your data before making any changes and follow the instructions carefully. Happy modding!

## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://androidsmart.github.io/etc/202403/adb-fastboot/)

[magisk v26.4](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)

[MI unlock Tool](https://en.miui.com/unlock/download_en.html)

twrp is coming soon

