---
type   : tutorial
title  : How to UBL and Install TWRP Recovery and Root Google Pixel 3 with Magisk
date   : 2023-12-08T09:17:35+07:00
slug   : GooglePixel3
categories: [magisk module]
tags      : [ubl, module]
keywords  : [unlock bootloader, google pixel 3,root google pixel 3]
author : wahyu6070
opengraph:
toc    :
excerpt:
---


Google Pixel 3 is one of the best Android devices that offers a pure and fast experience. However, some users may want to customize their phones beyond the stock settings, such as installing custom ROMs, kernels, mods, or apps that require root access. To do that, you need to unlock the bootloader, install TWRP recovery, and root your Pixel 3 with Magisk, a popular tool that allows you to modify the system partition without actually changing it. In this article, we will show you how to UBL and install TWRP recovery and root Google Pixel 3 with Magisk in a few simple steps.

## Disclaimer

- Unlocking the bootloader will wipe all the data from your device. This includes all media saved to the device's internal storage such as pictures, videos, music, documents, etc. Backup any important files to your PC or cloud storage before proceeding.
- Installing TWRP recovery and rooting your device may void your warranty and expose you to security risks. Proceed at your own risk and responsibility. We are not liable for any damage or loss that may occur to your device or data.
- This guide is only for Google Pixel 3. Do not try this on any other device or model.

## Prerequisites

- A Google Pixel 3 with at least 50% battery charge.
- A Windows, Mac, or Linux PC with ADB and Fastboot installed. You can follow [this guide](https://www.droidviews.com/twrp-3-2-3-google-pixel-3-pixel-3-xl/) to set up ADB and Fastboot on your PC.
- A USB cable to connect your phone to your PC.
- The latest Magisk Manager app installed on your phone. You can download it from [here].
- The latest TWRP image for your Pixel 3 from [here](https://www.getdroidtips.com/download-install-twrp-recovery-on-pixel-3/). Save the file to the same directory on your PC where you saved the ADB and Fastboot binaries.

## Part 1 - Unlock the Bootloader

- Open the Settings app on your phone. Go to System > About phone. Scroll down and tap on Build number 7 times until it says you're now a developer.
- Go back one page and near the bottom of the list, you should see Developer options. Tap on it and enable OEM unlocking and USB debugging.
- Plug in your phone to your PC. Open a command prompt/Power Shell/Terminal in the same directory where you saved the ADB and Fastboot binaries and enter the following command depending on your OS:

Windows Command Prompt: `adb devices`

Windows Power Shell: `.\adb devices`

macOS/Linux Terminal: `./adb devices`

- If you see your device's serial number and it says "authorized," then you're good to go. If not, you may need to allow USB debugging on your phone's screen.
- Enter the following command to reboot your phone into bootloader mode:

`adb reboot bootloader`

- Once your phone is in bootloader mode, enter the following command to unlock the bootloader:

`fastboot flashing unlock`

- You will see a warning message on your phone's screen. Use the volume keys to select "Unlock the bootloader" and press the power button to confirm.
- Wait for the process to finish and your phone will reboot. You have successfully unlocked the bootloader of your Pixel 3.

## Part 2 - Install TWRP Recovery

- With your phone connected to the PC via the USB cable, use the following adb command to reboot it into bootloader mode as before:

`adb reboot bootloader`

- Now flash the TWRP image file to your device with this command:

`fastboot flash boot twrp.img`

- Wait for the process to complete and reboot your phone with this command:

`fastboot reboot`

- Once your phone boots up, open the Magisk Manager app and check the status. It should say "Magisk is up to date" and "Magisk is installed."
- Congratulations, you have successfully installed TWRP recovery and rooted your Pixel 3 with Magisk. You can now enjoy the benefits of TWRP recovery and root access and install various modules and mods from the Magisk Manager app or the TWRP recovery menu.

## Conclusion

In this article, we have shown you how to UBL and install TWRP recovery and root Google Pixel 3 with Magisk. This is a simple and safe method that does not modify the system partition and allows you to pass the SafetyNet check. You can also easily unroot your device by restoring the stock boot image or installing the OTA updates. We hope you found this guide helpful and easy to follow. If you have any questions or feedback, feel free to leave a comment below.
