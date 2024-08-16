---
type   : module
title  : Play Integrity Fix Magisk KSU Module
date   : 2024-03-10T09:17:35+07:00
slug   : Play Integrity Fix
categories: [magisk module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [Play Integrity Fix]
---


This module attempts to fix Play Integrity verdicts to get a certified device on bootloader unlocked devices.

Device verdict should pass by default. If not, try removing /data/adb/pif.json file. DO NOT REMOVE pif.json in module's folder!

## Notes
This module attempts to fix Play Integrity verdicts to get a certified device on bootloader unlocked devices.

To start using it you must need Magisk, KernelSU or Apatch, this is the recommended setup (choose only one):

Magisk with Zygisk and deny list enabled.

[KernelSU](https://github.com/topjohnwu/Magisk) with [ZygiskNext](https://github.com/Dr-TSNG/ZygiskNext) module installed.

[Apatch](https://github.com/bmax121/APatch) with [ZygiskNext MOD](https://github.com/Yervant7/ZygiskNext) module installed.

Zygisk is mandatory and Shamiko is NOT needed.

## Faq
**This module will help me to pass STRONG verdict?**

** I'm failing BASIC verdict, why?**

I can pass BASIC but DEVICE fails...

Play Store shows that my device is not certified

Google Wallet isn't working

## MEETS_STRONG_INTEGRITY

This verdict should be impossible to pass in normal conditions.

Some time ago there was a vulnerability in Google's servers that allowed us to pass the Strong. The PIF module was born from that bug and evolved until today. Unfortunately PIF can no longer pass this verdict.

As far as we know there is only one app that needs this verdict: Faceapp.

However, there are some devices that come from the factory with TEE bad coded making that in the hardware attestation, the Root of Trust is valid (bootloader locked with the original OEM keys) making it possible to pass the Strong.

## Xiaomi.eu custom rom
I recommend you to use their latest stable version and install their latest APK which inbuild the fix. If you are rooted remember to uninstall my module and add GMS main and unstable processes to deny list to avoid DroidGuard detecting root.

But if you want to still using my module in Xiaomi.eu rom, you must uninstall updates for XiaomiEUInject app and then install my module.

What happen if xiaomi.eu devs dropped support for my device and their APK isn't compatible? If you want to pass Play Integrity you must flash stock ROM or use another rom.

## Download
[Pling](https://androidsmart.github.io/d/202403/play-integrity-fix/)
