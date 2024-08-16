---
type   : module
title  : Disable Target API Block Magisk and kernelsu modules
slug : Disable Target API Block
date   : 2024-06-10T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [Disable Target API Block]
author : 
---

Android 14, Google started blocking old apps (those targeting a target API lower than 23, i.e. anything before Marshmallow/Android 6) from being installed.

While this behaviour can be overridden by calling adb install (respectively pm install if you've got access to a root shell on your device) with the --bypass-low-target-sdk-block flag, it still breaks simple manual installation of older APKs, as well as any backup apps and other software like that which hasn't yet been updated for this new behaviour.

This Xposed module hooks the app installation process to always behave as if that flag had been passed and to therefore generally allow installation of old apps.

⚠️Notes: Requires at least Android 14

📥Version: v1.0.0

👤Author: buttercookie42

## Link
[download](https://t.me/wahyu6070files/518)



