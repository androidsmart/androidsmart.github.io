---
type   : cusrom
title  : Adb Fastboot Tools Download Latest version - All platform
date   : 2024-03-01T09:17:35+07:00
slug   : adb-fastboot
categories: [tool]
tags      : [universal]
keywords  : [adb fastboot]
author :
---


ADB (Android Debug Bridge) and Fastboot are essential tools that allow you to access and control your Android device from a computer. Both are command-line programs that connect to your Android device via USB. Though often used together, they have distinct functions.

## What is ADB?

ADB is a versatile communication bridge between your computer and Android device. With ADB, you can perform various tasks, such as:

* **Installing and uninstalling apps:** Install APK (Android application package) files directly from your computer, uninstall unwanted apps, or update existing ones.
* **Transferring files:** Easily copy files to and from your Android device. This is useful for moving photos, videos, music, or other file types.
* **Running shell commands:** Access the Android shell and execute commands directly from your computer. This gives you greater control over your device.
* **Debugging apps:** ADB is an essential tool for developers to test and debug their applications.

## What is Fastboot?

Fastboot is used to modify the file system of your Android device while it's in bootloader mode. Bootloader mode is a special state where your device is ready to receive flashing instructions. With Fastboot, you can:

* **Install Custom ROMs:** Replace your Android operating system with custom ROMs that offer additional features and customizations.
* **Install Custom Recoveries:** Custom recoveries like TWRP (Team Win Recovery Project) give you more control over your device, including the ability to create full backups, install system modifications, and more.
* **Unlock Bootloader:** Some manufacturers lock the bootloader of their devices. Unlocking the bootloader is a crucial step before you can install custom ROMs or recoveries.
* **Flash System Images:** Update or reinstall individual components of your Android system, like the bootloader, kernel, or radio.

## How to Use ADB and Fastboot

To use ADB and Fastboot, you need to:

1. **Enable USB Debugging:** Enable the "USB Debugging" option in the developer settings of your Android device.
2. **Install ADB Drivers:** Download and install the appropriate ADB drivers for your device from the manufacturer's website.
3. **Download Android SDK Platform Tools:** Download the Android SDK Platform Tools from the Android developer website. This package includes ADB and Fastboot.
4. **Open Command Prompt or Terminal:** Navigate to the directory where you extracted the Android SDK Platform Tools, then open a command prompt or terminal.
5. **Connect Your Android Device:** Connect your Android device to your computer using a USB cable.
6. **Run ADB or Fastboot Commands:** Use the appropriate ADB or Fastboot commands to perform the tasks you want.

## Example ADB and Fastboot Commands

Here are some useful examples of ADB and Fastboot commands:

**ADB:**

* `adb devices`: List connected Android devices.
* `adb install <filename.apk>`: Install an app from an APK file.
* `adb uninstall <packagename>`: Uninstall an app by package name.
* `adb push <local_file_path> <device_file_path>`: Copy a file from your computer to the device.
* `adb pull <device_file_path> <local_file_path>`: Copy a file from the device to your computer.

**Fastboot:**

* `fastboot devices`: List devices in fastboot mode.
* `fastboot flash recovery <filename.img>`: Install a custom recovery.
* `fastboot flash boot <filename.img>`: Install a kernel.
* `fastboot oem unlock`: Unlock bootloader (if supported by the manufacturer).

## Warning

Modifying your Android device with ADB and Fastboot can void your warranty and potentially damage your device if not done correctly. Always do your research and follow instructions carefully before attempting any modifications.

## Conclusion

ADB and Fastboot are powerful tools for controlling and customizing your Android device. By understanding how to use them, you can unlock your device's full potential and tailor it to your preferences.


## Download Link
### Windows
[v1.4.3](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/adb-setup-1.4.3.zip/download) (recomended)

[Latest version](https://dl.google.com/android/repository/platform-tools-latest-windows.zip)

### MAC
[MAC](https://dl.google.com/android/repository/platform-tools-latest-darwin.zip)

### Linux
[Linux](https://dl.google.com/android/repository/platform-tools-latest-linux.zip)

### Android
[Android Module](https://xdaforums.com/attachments/update-adb-installer-v1-0-41-signed-zip.6027118/)
