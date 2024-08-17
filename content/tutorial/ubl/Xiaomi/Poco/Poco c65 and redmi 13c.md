---
type   : tutorial
title  : How to Unlock Bootloader And Install Twrp on Xiaomi REDMI 13C/Poco C65
slug   : ubl-twrp-gale-gust
date   : 2024-02-28T09:17:35+07:00
categories: [tutorial]
tags      : [ubl]
keywords  : [Unlock bootloader poco c65]
author :
---

REDMI 13C/Poco C65 is a smartphone model from Xiaomi that was released in January 2024. Mediatek MT6769Z Helio G85 (12nm) CPU Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55).

If you are an Android enthusiast who wants to customize your smartphone with custom ROMs, root access, or other modifications, you will need to unlock the bootloader of your device first. The bootloader is a program that runs before the operating system and kernel, and it controls the boot process and the recovery mode. By default, the bootloader of most Android devices is locked by the manufacturer, to prevent unauthorized changes to the software and to ensure the security and stability of the device.

However, Xiaomi allows its users to unlock the bootloader of their devices, as long as they follow some steps and use the official Mi Unlock Tool. Unlocking the bootloader will give you more freedom and control over your device, but it will also void the warranty, erase the data, and potentially expose your device to risks. Therefore, you should only proceed if you are aware of the consequences and have a clear purpose for unlocking the bootloader.

In this article, we will guide you through the process of unlocking the bootloader of Xiaomi REDMI 13C/Poco C65.

- A Xiaomi Poco c65 with at least 63% battery charge.
- A Windows PC with an internet connection.
- A USB cable compatible with your device.
- A backup of your important data, as unlocking the bootloader will erase everything on your device.
- The Xiaomi REDMI 13C/Poco C65 USB drivers, which you can download from.
- The Mi Unlock Tool, which you can download from .
- The Xiaomi REDMI 13C/Poco C65 fastboot drivers, which you can download from .

## Step 1: Enable Developer Options and OEM Unlocking

The first step is to enable the developer options on your device, which will allow you to access some advanced settings and features. To do this, follow these steps:

- Go to Settings > About phone and tap on MIUI version seven times until you see a message saying "You are now a developer".
- Go back to Settings > Additional settings > Developer options and enable the toggle for OEM unlocking. This will allow you to unlock the bootloader of your device.
- In the same menu, enable the toggle for USB debugging. This will allow your PC to communicate with your device.

## Step 2: Bind Your Device to Your Mi Account

The next step is to bind your device to your Mi account, which is required to verify your identity and authorize the bootloader unlocking. To do this, follow these steps:

- Go to Settings > Mi Account and sign in with your Mi account. If you don't have one, you can create one for free.
- Go to Settings > Mi Account > Mi Cloud and enable the toggle for Find Device. This will allow you to locate your device remotely in case you lose it or it gets stolen.
- Go to Settings > Additional settings > Developer options > Mi Unlock status and tap on Add account and device. This will bind your device to your Mi account and enable the bootloader unlocking option.

Note: After binding your device to your Mi account, you may have to wait for a certain period of time (usually 7 days) before you can unlock the bootloader. This is a security measure to prevent unauthorized unlocking of stolen devices. You can check the remaining time by tapping on Mi Unlock status again.

## Step 3: Boot Your Device into Fastboot Mode

The third step is to boot your device into fastboot mode, which is a special mode that allows you to flash firmware and perform other operations using the fastboot command. To do this, follow these steps:

- Power off your device completely.
- Press and hold the Volume Down and Power buttons simultaneously until you see the fastboot logo on the screen.
- Connect your device to your PC using the USB cable.

## Step 4: Run the Mi Unlock Tool and Unlock the Bootloader

The final step is to run the Mi Unlock Tool on your PC and unlock the bootloader of your device. To do this, follow these steps:

- Extract the Mi Unlock Tool zip file that you downloaded earlier and run the miflash_unlock.exe file.
- Sign in with the same Mi account that you used to bind your device.
- The tool will detect your device and show its information. Click on Unlock to start the unlocking process.
- Wait for the tool to complete the unlocking process. You will see a message saying "Unlocked successfully" when it is done.
- Click on Reboot phone to restart your device.

## Install Twrp
### From older version/other custom recovery
1. copy New twrp.img to to your phone
2. reboot to custom recovery
3. Press Install, Press  Install Image, then select the new twrp.img file that you copied and pasted on your phone choose Install Recovery Ramdisk and swipe to confirm flash and wait until completed
4. Flash magisk.zip if you use magisk
5. reboot recovery

### Using fastboot

1. Make folder TWRP in your windows

2. Copy your boot.img that you are currently using..., for example, I am on miui 14.0.7 Global so I have to download ROM 14.0.7 Global from https://xiaomifirmwareupdater.com and search device Redmi 13C and search that version miui you currently using and make sure the file is .tgz, not .zip

3. Extract rom miui that and enter folder images and search boot.img and copy that boot.img to folder TWRP you make and copy to microsd card or usb otg

4. copy file TWRP-3.7.1_12-UNOFFICIAL-gale.img to microsd card or usb otg

5. make sure you successfully installing platfrom tools.zip into your folder TWRP

6. click your status bar windows explorer type : cmd.exe

7. type ( adb reboot bootloader ) if you from homescreen

8. type again ``fastboot flash boot TWRP-3.7.1_12-UNOFFICIAL-gale.img`` wait until completed

9. type again ``fastboot reboot recovery`` wait until entered TWRP Menu

10. in TWRP Menu Press Install Select the boot.img file that you copied and pasted on the microSD card or USB OTG choose Boot and swipe to confirm flash and wait until completed

11. press back button in twrp TWRP Menu Press Install Select the TWRP-3.7.1_12-UNOFFICIAL-gale.img file that you copied and pasted on the microSD card or USB OTG choose Install Recovery Ramdisk and swipe to confirm flash and wait until completed

12. Reboot System


## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://androidsmart.github.io/etc/202403/adb-fastboot/)

[magisk v26.4](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)

[MI unlock Tool](https://en.miui.com/unlock/download_en.html)

[TWRP](https://sourceforge.net/projects/wulan17/files/Gale/TWRP/)


