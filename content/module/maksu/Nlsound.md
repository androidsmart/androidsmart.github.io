---
type   : module
title  : NLSound For Qualcomm Devices
slug : nlsound
date   : 2024-03-23T09:17:35+07:00
ads    : true
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
---

This module globally improves audio quality when recording video/audio and listening to audio on your device.

## Changelog
- Fixed sound in audio calls using Telegram for Poco X3 NFC device
- Fix incrorrect condition skip -> Skip at one of the installer points
- Fixed Hi-Res output operation for some devices, including Poco X3 NFC
- Fixed a dumb syntax errors in the audio_codec patching function
- Fixed a dumb syntax issue with audio_platform_files patching that caused patching to not work correctly and cause bootloop or various issues on different devices
- Other changes we may have forgotten about.
- Audio_policy patching logic has been slightly simplified: the module got rid of unnecessary useless checks of various conditions before making any changes to the file;

## Notes
- Only for Qualcomm Snapdragon devices!
- On devices based on processors lower than SDM625, work of the modification is not guaranteed!⚠️

## Link
[Pling](https://www.pling.com/p/2122998/)

