---
type   : tutorial
title  : How to Unlock Bootloader And Install Twrp on Xiaomi 14T
slug   : ubl-degas
date   : 2024-10-15T09:17:35+07:00
categories: [tutorial]
tags      : [ubl, twrp]
keywords  : [Unlock bootloader Xiaomi 14T]
author : 
---

**Disclaimer:** Unlocking the bootloader and installing TWRP will void your warranty and may potentially brick your device if not done correctly. Proceed with caution and at your own risk. Ensure you have a backup of your important data before proceeding.

## Prerequisites

* **Enable USB Debugging and OEM Unlocking:**
    * Go to **Settings > About phone > MIUI version**. Tap on the MIUI version repeatedly until Developer options are enabled.
    * Go back to **Settings > Additional settings > Developer options**.
    * Enable **OEM unlocking** and **USB debugging**.
* **Link your Mi Account:**
    * In Developer options, scroll down to **Mi Unlock status** and tap **Add account and device**. Follow the on-screen instructions to link your Mi Account.
* **Install ADB and Fastboot drivers on your computer:**
    * Download the platform-tools from the official Android Developers website: [link to platform-tools download]
    * Extract the downloaded zip file to a convenient location on your computer.
* **Download the latest TWRP image for Xiaomi 14T:**
    * Search for "Xiaomi 14T TWRP" on a trusted source like XDA Developers or the official TWRP website. Ensure you download the correct image for your specific device model.
* **Charge your phone:** Make sure your phone has at least 50% battery to avoid any interruptions during the process.

## Steps

1. **Unlock the Bootloader:**
    * **Apply for unlocking permission:** Go to the official Mi Unlock website: [link to mi unlock website] and apply for unlocking permission. You may need to wait for a few days for the permission to be granted.
    * **Unlock the device:** Once permission is granted, open the Mi Unlock tool on your computer. Connect your phone to the computer in fastboot mode (power off the phone, then press and hold Volume Down + Power button). Follow the on-screen instructions in the Mi Unlock tool to unlock the bootloader.
2. **Install TWRP:**
    * **Boot into fastboot mode:** Disconnect your phone from the computer and boot it into fastboot mode again.
    * **Connect to the computer:** Connect your phone to the computer via USB cable.
    * **Open a command prompt or terminal window:** Navigate to the directory where you extracted the platform-tools.
    * **Flash TWRP:** Type the following command and press Enter:
        ```
        fastboot flash recovery twrp.img
        ```
        (Replace `twrp.img` with the actual filename of the TWRP image you downloaded.)
    * **Boot into TWRP:**  Type the following command and press Enter:
        ```
        fastboot boot twrp.img
        ```
        This will temporarily boot your device into TWRP recovery.
3. **(Optional) Make a backup of your current ROM:**
    * In TWRP recovery, navigate to **Backup** and select the partitions you want to back up (usually System, Data, and Boot). Swipe to confirm the backup.

## Important Notes

* **Decryption:** You might need to format data in TWRP to decrypt your device's storage. This will wipe all your data, so make sure you have a backup.
* **Updates:** Keep an eye out for TWRP updates for your device and update it periodically for optimal compatibility and features.
* **Root:** If you want to root your device, you can flash Magisk from TWRP recovery after installing TWRP.

Remember to proceed carefully and follow the instructions closely. If you encounter any issues, refer to the XDA Developers forum or other online resources for assistance.


## Download Link

[Usb Driver](https://sourceforge.net/projects/wahyu6070-project-android/files/Tools/surya/PdaNetA4199.zip/download)

[Adb Fastboot](https://androidsmart.github.io/etc/202403/adb-fastboot/)

[Magisk](https://github.com/topjohnwu/Magisk/releases/latest)

[MI unlock Tool](https://en.miui.com/unlock/download_en.html)

[TWRP](https://androidsmart.github.io/cusrom/202410/twrp-degas/)

