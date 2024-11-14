---
type   : kernel
title  : Stock Kernel Google Pixel 1 (sailfish)
date   : 2024-11-14T09:17:35+07:00
slug   : stock-sailfish
categories: [kernel]
tags      : [sailfish]
keywords  : [Google Pixel 1]
author : 
---

Download Custom Kernel Stock For Google Pixel 1 (sailfish).


I compiled the stock kernel for the Pixel/PixelXL (they both use the same kernel) and applied the SafetyNet patch by sultanxda. The kernel name says marlin, but this also works on sailfish. Google just created one kernel that works on both sailfish (Pixel) and marlin (Pixel XL) devices.

## Use case for this kernel
- If you want to stay completely stock, but have an unlocked bootloader, the SafetyNet is tripped which disables features such as Android Pay.
- This kernel is completely stock except for the addition of a patch that removes the SafetyNet check.
- If you do not have an unlocked bootloader there is no need to use this kernel. It's exactly the same as the kernel included in the stock builds, except with the addition of the SafetyNet patch.

## Installation
- Download attached .zip and unzip into a folder
- Reboot device into bootloader (power down device, then Power + Volume down)
- Connect device to computer
- Verify connection by typing 'fastboot devices'. Your device should show up (check serial number)
- Enter command: fastboot flash kernel <kernel_image>
- Once flashing is complete, enter command: fastboot reboot
- Disconnect device and wait for reboot sequence to complete.
- You now have a stock Pixel with an unlocked bootloader that can use Android Pay

## WARNING
If flashing this kernel for whatever reason ruins your device, please don't hold me accountable. Use this at your own risk!

And otherwise, I'm not a professional developer, just a hobbyist. Please don't ask me for a ton of help, I only created this kernel because I want to run completely stock, but still use Android Pay while having an unlocked bootloader in case I ever decide to root my device in the future (am running a Verizon Pixel). I will try to maintain this kernel with each new release until I lose interest :)

## notes
- For android oreo
- Support marlin - sailfish

## Link
[Download](https://androidfilehost.com/?w=files&flid=142031)

[Source](https://xdaforums.com/t/kernel-nmf26u-jan-4-stock-kernel-safetynet-patch.3515692/)


