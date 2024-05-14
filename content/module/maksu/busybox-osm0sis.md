---
type   : module
title  : Busybox NDK Android By osm0sis
date   : 2024-03-21T09:17:35+07:00
slug   : busybox-ndk
categories: [module]
keywords  : [magisk module, Kernelsu]
---


This article explores building Busybox, a swiss army knife of utilities, for the Android platform using the Android NDK (Native Development Kit). The information is based on the work of osm0sis, who has documented the process and provided patches for compatibility.

## What is Busybox?

Busybox is a powerful collection of Unix-like utilities bundled into a single executable. It's lightweight and efficient, making it ideal for embedded systems with limited resources. 

## Why Busybox on Android?

While Android has a robust set of libraries, Busybox offers a smaller alternative for specific use cases. It can be beneficial for:

* Custom ROM development
* Scripting and automation tasks
* Providing core utilities on a minimal system

## Building Busybox with Android NDK

The steps outlined here leverage the resources provided by osm0sis on GitHub [https://github.com/topjohnwu/ndk-busybox](https://github.com/topjohnwu/ndk-busybox).

**Prerequisites:**

* Android NDK installed
* Git version control system

**Steps:**

1. **Clone Busybox source:**

   ```bash
   git clone git://busybox.net/busybox.git
   cd busybox
   ```

2. **Configure for Android NDK:**

   ```bash
   cp configs/android_ndk_defconfig .config
   ```

3. **Set up toolchain path:**

   *  Update the following commands with the actual path to your NDK installation:

     ```bash
     export PATH="/path/to/your/android-ndk/android-ndk-rXX/toolchains/arm-linux-androideabi-XX/prebuilt/linux-x86/bin:$PATH"
     export CROSS_COMPILE="/path/to/your/android-ndk/android-ndk-rXX/toolchains/arm-linux-androideabi-XX/prebuilt/linux-x86/bin/arm-linux-androideabi-"
     ```

     * Replace `rXX` with your NDK version (e.g., r15c) and `XX` with the compiler version (e.g., 4.9).

4. **Optional: Customize applets (utilities):**

   * Use `make menuconfig` to enable/disable specific Busybox applets.

5. **Build Busybox:**

   ```bash
   make ARCH=arm CROSS_COMPILE="$CROSS_COMPILE"
   ```

**Note:** Refer to the original GitHub repository for detailed explanations and potential troubleshooting steps.

## Conclusion

Building Busybox with the Android NDK allows you to leverage its functionality within your Android environment. By following the steps outlined above and consulting osm0sis's work, you can achieve a successful build and explore the possibilities Busybox offers on Android.

## Link
[Download](https://xdaforums.com/attachments/update-busybox-installer-v1-36-1-all-signed-zip.6000117/)


