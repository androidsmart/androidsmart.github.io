---
type   : cusrom
title  : TWRP Recovery Redmi Note 9 Merlin
date   : 2024-11-05T09:17:35+07:00
slug   : twrp-merlinx
categories: [Recovery]
tags      : [merlinx]
keywords  : [Redmi Note 9]
name_rom : twrp
author : 
---

Download Custom Recovery Twrp for Xiaomi Redmi Note 9 (merlinx).

TWRP (Team Win Recovery Project) is a custom recovery that replaces the stock recovery on Android devices. It offers advanced features like flashing custom ROMs, creating backups, and restoring your device. Here's a guide on how to install TWRP on your Redmi Note 9 (Merlin)


## Disclaimer

  * Unlocking the bootloader and installing custom recovery will void your warranty.
  * Proceed with caution, as incorrect procedures can potentially brick your device.
  * Ensure your phone has sufficient battery charge (at least 50%) before proceeding.

## Prerequisites

  * **Unlocked Bootloader:** You'll need to unlock your Redmi Note 9's bootloader.
  * **ADB and Fastboot Drivers:** Install the necessary drivers on your computer.
  * **TWRP Image:** Download the latest TWRP image for your Redmi Note 9 (Merlin) from the official TWRP website or a trusted source like XDA Developers.
  * **Enable USB Debugging:** Go to **Settings \> About Phone \> Tap MIUI version 7 times** to enable Developer Options. Then, go to **Additional Settings \> Developer Options \> Enable USB Debugging**.

## Steps

1.  **Connect your phone:** Connect your Redmi Note 9 to your computer via USB cable.
2.  **Boot into Fastboot mode:** Open a command prompt or terminal window on your computer and type: `adb reboot bootloader`
3.  **Flash TWRP:** Once your phone is in fastboot mode, type the following command, replacing "twrp.img" with the actual filename of your TWRP image: `fastboot flash recovery twrp.img`
4.  **Boot into TWRP:** To prevent your phone from automatically replacing TWRP with the stock recovery, you need to boot directly into TWRP after flashing it.  While still in fastboot mode, use the volume buttons to navigate and the power button to select "Recovery".

## Additional Notes

  * **Backup:** It's highly recommended to create a backup of your important data before proceeding with this process.
  * **Root Access:** TWRP allows you to flash Magisk or SuperSU to gain root access on your device.
  * **Custom ROMs:** With TWRP installed, you can flash custom ROMs like LineageOS, Pixel Experience, and others.
  * **Updates:** Check for TWRP updates periodically to ensure you have the latest version with bug fixes and improvements.

## Troubleshooting

  * **Device not recognized:** Ensure you have the correct ADB and Fastboot drivers installed.
  * **TWRP not booting:** Double-check that you've downloaded the correct TWRP image for your device.
  * **Bootloop:** If your device gets stuck in a bootloop, try wiping data/factory reset from TWRP.

**Remember:** Modifying your device carries inherent risks. Always proceed with caution and research thoroughly before attempting any modifications.



## Download Link
### R Vendor
[TWRP 3.4.2 A10-A12](https://t.me/wahyu6070files/1105)

[Twrp 3.7.0 A13+](https://t.me/wahyu6070files/1106) | 
 | [DFE](https://t.me/rn9_merlin/262)
 | [Installation](https://telegra.ph/Credits-03-12-2)

