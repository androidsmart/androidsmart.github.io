---
type   : cusrom
title  : Download Rom Awaken Os Android 14 Redmi Note 7 Lavender
date   : 2024-03-09T09:17:35+07:00
slug   : awaken-a14-lavender
categories: [rom]
tags      : [lavender]
keywords  : [redmi note 7]
author : 
---

Download Custom Rom Awaken Os android 14 Xiaomi redmi note 7 Lavender

## How To Install 
### Clean flash

```
1. Install last Orangefox Official Recovery, R11.1_6;
1. Info: If you are coming from a 4.19 rom, make sure that u change your data/cache partition type to Ext4;
2. Format data;
3. Wipe cache and dalvik;
4. Flash the rom file;
5. Reboot to system;
```

### Dirty flash
```
1. Download rom update;
2. Reboot to recovery;
3. Flash the rom file;
5. Wipe cache and dalvik;
6. Reboot to system and voila!
```


## Device Changelog
# Device Changelog's
* Device changelogs related with Redmi Note 7 builds available by me;

## Redmi Note 7 - Lavender

### Device Tree - 06/03/2024

- parts: Add Kcal support and refactor to our implementation
- overlay: Disable Now Playing Components;
- rootdir: Configure zram on fstab and switch to a fixed common size;
- device: Build Lineage Health Hal and adress it denials;
- overlay: Allow seamless Doze state transitions;
- device: Fixed sensor build and drop 32 bits version;
- device: Add AOSP audio policy engine configs to fixup some related denials;
- device: Switch CPU variant to Cortex-A73;
- audio: Set valid and supported channel mask for earpiece;
- audio: Offload 24 bits playback supports mp3/aac format;
- powerhint: Fix some denial's and reset some power hints only after boot it's complete;
- device: Optimized reserved space size on partitions;
- device: Build OMX HIDL HAL after deprecate 32-bit apps;
- device: Messed again with LMKD optimization;
- ...

### Device Tree - 01/01/2024

- Disable frame rate override feature;
- Sort out display props;
- parts: Target current sdk;
- parts: Get rid of HelpDialogFragment class;
- parts: Add an exported flag in manifest;

### Device Tree - 01/12/2023

- Disable backpressure;
- Don't cleanup resources due to rendering a prior frame;

### Device Tree - 24/11/2023

- Switch to two-stage init mounting;
- Releasetools: Include/flash DTBO image;
- Use logdump as metadata partition;
- Retrofit dynamic partitions;
- Reserve some space for partitions;

### Device Tree - 17/11/2023

- Import libnotifyaudiohal from lavender;
- Patched fingerprint blobs to workaround the removal of gBn/sConstructorMap;
- Patched camera blobs to fullify new aosp request's on linkerconfig;
- Decprecate SAR...
- Remove activity_recognition libs;
- Migrate to AIDL ClearKey DRM HAL;
- Move to QTI health AIDL service;
- Build android.hardware.bluetooth.audio-impl;
- Disable sound trigger support completly;
- Import deviceInfoServiceModule from Sweet;
- Set userspace lmk properties;
- Disable memcg kernel and socket accounting;
- Switch to legacy WiFi HIDL HAL;
- Build mlipay@1.0 interface;
- Follow qssi default behaviour and disable auto_latch_unsignaled property to keep latch-unsignaled working as intend;
- Improve SF durations;
- Force pre-5.10 devices to treat 170M as sRGB in SF;
- Satisfy EPPE enforcement;
- Remove duplicate SIP+VoIP permission;
- Update CarrierConfig from LA.UM.10.2.1.r1-04000-sdm660.0;
- Properly label /sys/kernel/qvr_external_sensor/fd;
- Update AIDL Pixel PowerHAL for Android 13/14;
- Suppress imsdatadaemon denials;
- Move init.recovery.qcom.rc out of root;
- Update mlipay from lavender V12.5.7.0.QFGCNXM;
- Build mtdservice interface lib from source;
- Drop useless thermal profile service;
- Drop hidl power stats mock;
- Use bluetooth.audio@2.1;
- Reorder and cleanup device tree makefiles;
- Switch to source-built mlipay interface;
- Update CNE, DPM, IMS, QMI, RIL blobs from LA.QSSI.13.0.r1-09700-qssi.0;
- Build android.hardware.bluetooth@1.0;
- Label goodix fingerprint interfaces;
- Label location SELinux find denial;
- Ship prebuilt libprotobuf-cpp from v29 VNDK;
- Explicitly disable AVB;
- Kang peripheral manager from caymanslm;
- Raise VINTF target level to 4;
- Replace isolated_app with isolated_app_all;
- Fix gps, display, media and audio hals build as needed by clang on Android 14;

### Kernel - 01/01/2024

- Merge some changes/backports from msm8998;

### Kernel - 24/11/2023

- Adapt for retrofit dynamic partitions;

### Kernel - 17/11/2023

- We are now using Nexus Kernel as base from [here](https://github.com/projects-nexus/nexus_kernel_xiaomi_lavender), credits go to [Prashant](https://github.com/Prashant-1695)
- Implement KernelSU support;
- Merge A14 clang changes;
- Avoid problems around BPF properties;
- Switched to userspace LMK;


## Source Modifications
- Fixed Android Auto permissions  
- Bring on Gemini support  
- Previous modifications from older versions  
- Ajusted some ViewConfiguration configs 

## Notes
- SELinux status is Enforcing, User build type, KSU Prebuilt 
- Only use kernel's compatible with retrofit partitions and complete A14 support 
- SafetyNet/PlayIntegrity: Passed by Default 
- [Recovery](https://github.com/SDM-660-Zone/Lavender-Hub/raw/4.4/recovery/OrangeFox-Unofficial-lavender-A14-4.4-retro.zip) that shoud be used 
- Recovery [Changelogs](https://github.com/SDM-660-Zone/Lavender-Hub/blob/4.4/changelogs/device_changelogs.md)
- Explore [lavenderhub](https://github.com/SDM-660-Zone/Lavender-Hub/tree/4.4) for any info related 
- Found any bug? Report it with a proper logcat 

## Download Link
[Download ROM](https://sourceforge.net/projects/vitor-unofficial-builds/files/Awaken/)




