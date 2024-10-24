---
type   : module
title  : Bluetooth Library Patcher Magisk / Kernelsu Module
slug : Bluetooth Library Patcher
date   : 2024-07-14
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
---

Bluetooth Library Patcher Module for Rooted Devices

**Description:**

The Bluetooth Library Patcher is a module designed for rooted Samsung devices. It aims to prevent the loss of Bluetooth pairings after a reboot or switching airplane mode on and off. The module works by patching the Bluetooth library on the fly and is compatible with most Samsung devices running Android Nougat, Oreo, Pie, 10, 11, 12, 13, and 14.

**Important Note:** This patch is not compatible with AOSP ROMs (only stock or Samsung-based ROMs).

**How to Use:**

1. **Installation:**
   * Download the module from the Magisk Manager app or from the GitHub releases page: [https://github.com/3arthur6/BluetoothLibraryPatcher/releases](https://github.com/3arthur6/BluetoothLibraryPatcher/releases)
   * Install it through the Magisk Manager app.
   * Reboot your device.

2. **Galaxy Watch Support (Additional Steps):**
   * Due to limitations in Magisk, fixing pairing issues with Galaxy Watch devices requires manual steps:
      * Open a terminal emulator app (like Termux).
      * Run the following commands:
         ```bash
         su
         mount -o remount,rw /vendor
         for i in `grep -lr 'security.wsm' /vendor/etc/vintf`; do [ ! -z $i ] && sed -i "$((`awk '/security.wsm/ {print FNR}' $i`-1)),/<\/hal>/d" $i; done
         mount -o remount,ro /vendor
         ```
   * Reboot your device.

**Alternative Method for Galaxy Watch Support (Android 12L and below):**

* Instead of installing the Magisk module and running commands, you can flash the ZIP file from the GitHub releases page using TWRP recovery. The ZIP file is specifically for TWRP and is named "BluetoothLibraryPatcher_twrp_X.X.X.zip."

**Important Note for Galaxy S21 and Newer:**
* For devices starting from the S21 series, the manual commands might not work (or could be risky if your vendor partition is full or read-only). In this case, use the TWRP ZIP file method mentioned above.


## Download Link
[Link](https://github.com/3arthur6/BluetoothLibraryPatcher/releases/download/v2.6.9/BluetoothLibraryPatcher_module_2.6.9.zip)

