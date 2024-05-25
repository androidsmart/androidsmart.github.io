---
type   : kernel
title  : Download Elindir Kernel Redmi Note 3 Pro
date   : 2024-05-25T09:17:35+07:00
slug   : elindir-kenzo
categories: [kernel]
tags      : [kenzo]
keywords  : [Redmi Note Pro]
author : krittin
---

Download Custom kernel Elindir For Xiaomi Redmi Note 3 pro (kenzo).


## Performance Improvements
- Overclocked CPU and GPU DDR to 1296MHz and BIMC to 648MHz
- Add support to early mount system partition so that system modules can be loaded during early init
- Added Cultivation and Darkness governors (recommend using Darkness)
- Added PowerSuspend driver

## GPU Enhancements
- Add GPU mempools properties for msm8976/56
- Reduced idle timeout to 64msec
- Reduced active and wakeup latency
- Reduced jump busy penalty to 8000 nano seconds
- Reduced jump target power level
- Increase GPU Mempool size to 256K
- Tweaked voltage values for GPU

## Optimizations
- Removed placebo code
- Reverted a number of commits to improve performance (thanks to @AmolAmrit)
- Synchronized camera open and close calls
- Boost scheduler to prefer BIG cores when camera in use
- Prevent Google Camera, Snap Cam and MIUI Camera from running in the background
- Disable logs and tracing for a bunch of stuff

## Audio Improvements
- Add 32 bit 384kHz audio playback support
- Speaker Audio: Add Texas Instruments AW8738 High Performance 4W Smart Amplifier driver
- Set 12dB gain for speaker playback
- Add G711 audio encoding support (G711 PCM is a commonly used waveform speech codec)
- Add DTS to support offload formats
- Add changes to support APTX decoder in offload mode
- Add support to set Bluetooth device address and add new mixer control to set license key
- Extend ALSA (Advanced Linux Sound Architecture) compress to support APTX format
- Add misc device sysfs for AW8738 Amplifier
- Switch to generic detection for both normal and faulty jacks. From now onward, there will be unified builds for the two variants

## Additional Info

- Support MIUI
- Support AOSP (Nougat, Oreo, Pie, Ten)
- Non OC Version (60Hz): Isn't Overclocked at all
- OC (60Hz+): Overclocked CPU, GPU and Screen Refresh Rate
- Available 2 version: Normal Version and JackFix Version
- Read more: HERE


## Link
[Download](https://github.com/androbada525/Elindir-Kernel/releases/download/v4/)

