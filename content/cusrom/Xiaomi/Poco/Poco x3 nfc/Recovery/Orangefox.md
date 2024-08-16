---
type   : cusrom
title  : OrangeFox Recovery Xiaomi Poco x3 (Surya)
date   : 2024-07-17T09:17:35+07:00
slug   : orangefox-surya
categories: [Recovery]
tags      : [surya]
keywords  : [Poco X3]
author : brigudav
---

Download Custom Recovery Orangefox Latest version for Xiaomi Poco x3 (Surya).

OrangeFox Recovery is a popular custom recovery option for Android devices, known for its user-friendly interface and extensive features. If you own a POCO X3 (codename Surya), installing OrangeFox can unlock a world of customization possibilities, including installing custom ROMs, kernels, and mods.

## Why Choose OrangeFox for Your POCO X3?

* **Intuitive Interface:** OrangeFox boasts a visually appealing and easy-to-navigate interface, making it a great choice for both beginners and experienced users.

* **Feature-Rich:** OrangeFox comes packed with features like advanced backup and restore options, the ability to flash ZIP files, format partitions, and much more.

* **Regular Updates:** The OrangeFox team actively maintains and updates the recovery, ensuring compatibility with the latest Android versions and addressing any bugs or issues.

* **Active Community:** OrangeFox has a large and active community of users and developers who are always ready to help and share their knowledge.

## How to Install OrangeFox on Your POCO X3

**Prerequisites:**

* **Unlocked Bootloader:** Your POCO X3's bootloader must be unlocked before you can install any custom recovery.

* **ADB and Fastboot:** Make sure you have ADB and Fastboot tools installed on your computer.

* **OrangeFox Recovery Image:** Download the latest OrangeFox recovery image for your POCO X3 (Surya) from a trusted source like the official OrangeFox website or XDA Developers forum.

**Installation Steps:**

1. **Enable USB Debugging:** Go to your phone's settings, then "About Phone," and tap on the "Build Number" seven times to enable Developer Options. Go back to the main settings menu, enter "Developer Options," and enable "USB Debugging."

2. **Connect to Computer:** Connect your POCO X3 to your computer using a USB cable.

3. **Boot into Fastboot Mode:** Open a command prompt or terminal on your computer and enter the following command: `adb reboot bootloader`

4. **Flash OrangeFox:** Once your phone is in Fastboot mode, enter the following command, replacing "recovery.img" with the actual filename of the OrangeFox image you downloaded: `fastboot flash recovery recovery.img`

5. **Reboot:** After the flashing process is complete, enter the following command to reboot your phone: `fastboot reboot`

Your POCO X3 should now boot into OrangeFox Recovery.

## Using OrangeFox Recovery

Once you have OrangeFox installed, you can use it to perform various tasks, such as:

* **Installing Custom ROMs:** Flash custom ROMs to change the look and feel of your phone's software.

* **Flashing ZIP Files:** Install mods, kernels, and other customizations using ZIP files.

* **Backing Up and Restoring:** Create backups of your current system and restore them in case anything goes wrong.

* **Managing Partitions:** Format partitions, wipe data, and perform other advanced operations.

## Additional Tips

* **Always Back Up:** Before making any major changes to your system, always create a backup in case something goes wrong.

* **Research Thoroughly:** Before installing any custom ROMs or mods, do your research and make sure they are compatible with your POCO X3 and your Android version.

* **Join the Community:** The OrangeFox community is a great resource for help and advice. Don't hesitate to ask questions or share your experiences.

By following this guide, you can easily install OrangeFox Recovery on your POCO X3 and unlock its full potential for customization. Enjoy exploring the world of custom ROMs, mods, and other tweaks to make your POCO X3 truly your own.


## Changelog
- Padding size fixed
- Metadata partition added to Wipe selection

## Notes
- FBEv1 & FBEv2
- Beta build (if u find bugs, write it in the comments)
- U can find device trees here
- Decryption on ROMs with FBEv1 & FBEv2 is fully working (also on MIUI ROMs).

## Download Link
### Unofficial
[ZIP](https://github.com/brigudav/android_device_xiaomi_surya_twrp/releases/latest)

[IMG](https://github.com/brigudav/android_device_xiaomi_surya_twrp/releases/latest)
