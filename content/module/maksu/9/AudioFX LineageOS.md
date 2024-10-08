---
type   : module
title  : AudioFX LineageOS Magisk Module
slug : AudioFX LineageOS
date   : 2024-07-01T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
---


## DISCLAIMER
- LineageOS apps and blobs are owned by LineageOS™.
- The MIT license specified here is for the Magisk Module only, not for LineageOS apps and blobs.

## Descriptions
- Equalizer soundfx ported from LineageOS ROM and integrated as a Magisk Module for all supported and rooted devices with Magisk
- Global type soundfx
- Conflicted with Samsung Sound Alive FX

## Sources
- LineageOS ROM rolex-user 14 AP1A.240505.005 eng.build.20240512.192842 release-keys
- libmagiskpolicy.so: Kitsune Mask R65C33E4F

## Screenshots
- https://t.me/androidryukimodsdiscussions/27160

## Requirements
- Android 6 and up
- Magisk or KernelSU installed

## Installation Guide & Download Link
- Do not use AOSP soundfx Remover Magisk Module nor Samsung Sound Alive Magisk Module nor anything that disables your stock AOSP soundfx libraries!
- Install this module https://www.pling.com/p/1557380/ via Magisk app or KernelSU app or Recovery if Magisk installed
- Install AML Magisk Module https://t.me/androidryukimodsdiscussions/29836 only if using any other else audio mod module
- If you are in Samsung One UI/TouchWiz ROM, then you need to install Sound Alive FX Remover (and AML) also: https://github.com/reiryuki/Sound-Alive-FX-Remover-Magisk-Module
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- If you are using SUList, you need to allow list manually your home launcher app (enable show system apps) and reboot afterwards
- If AudioFX doesn't work, then type:

  `su`
  
  `afx`
  
  at Terminal/Termux app while playing music

## Optionals
- Global: https://t.me/androidryukimodsdiscussions/60861
- Stream: https://t.me/androidryukimodsdiscussions/26764

## Troubleshootings
- https://t.me/androidryukimodsdiscussions/193490
- Global: https://t.me/androidryukimodsdiscussions/29836

## Support & Bug Report
- https://t.me/androidryukimodsdiscussions/2618
- If you don't do above, issues will be closed immediately

## Tested on
- Android 11 DotOS ROM
- Android 12 AncientOS ROM
- Android 12.1 Nusantara ROM
- Android 13 AOSP ROM, CrDroid ROM, & AlphaDroid ROM
- Android 14 LineageOS ROM

## Credits and Contributors
- https://t.me/viperatmos
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

