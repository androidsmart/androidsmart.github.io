---
type   : module
title  : Ainur James Dsp
date   : 2024-02-24T09:17:35+07:00
categories: [magisk module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk module, viper4androidfx, dolby, audio equalizer]
---

This is a reformed audio effect digital signal processing engine for Android. The GUI is copy from Omnirom DSPManager, but the internal audio engine is enhanced and reformed!

## Features
- Pro dynamic range compression
- Bass Boost
--> 1023/4095/8191 order FIR linear phase low pass bass boost
- Reverberation (Dual engine reverb)
--> GVerb
--> Progenitor 2
- 10 Band Hybrid Equalizer
- Stereo Widen
- Triode dual stage vacuum tube simulation
--> Simulate with real mathematical model of 12AX7 tube
- Auto partitioning high efficient convolution engine
--> Support mono / stereo / full stereo(LL, LR, RL, RR) impulse response
--> Samples per channels should less than 1000000* for stereo
--> Samples per channels should less than 400000* for full stereo
--> Impulse response file support: V4A IRS, FLAC, WAV

## Install
Install via Magisk Manager, Flashfire, or recovery (Magisk or System install will detect automatically)

## Uninstall
- Delete module in Magisk Manager
- OR Flash module in recovery

## Notes
Convolver have been tested working even in stereo impulse response with 16121304 samples per channels on Snapdragon 820

If you look at the source code from Java part, you will find some are similar with Viper4Android, but this is not true.

Viper4Android only open source it's interface, their core drivers source code have never been released.

For convenient sake, I copy some interface code to accelerate my development.

## Download
[Pling](https://www.pling.com/p/2122998/)

