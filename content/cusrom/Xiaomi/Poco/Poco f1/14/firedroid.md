---
type   : cusrom
title  : Download Rom Firedroid Android 14 Poco F1 beryllium
date   : 2024-03-06T09:17:35+07:00
slug   : firedroid-a14-beryllium
categories: [rom]
tags      : [beryllium]
keywords  : [poco F1]
author : wahyu6070
---

Download Custom Rom Firedroid android 14 poco f1 beryllium.

## How to Install


### Installation Guide For FireDroid on Xiaomi Pocophone F1 (beryllium)

> [!Warning]
> * Your warranty is void. Or valid, probably?
> * FireDroid is not responsible for any damage you made to your device. You have been warned!
> * We are not responsible for anything that may happen to your phone by installing custom ROMs.
> * We are not responsible for anything that may happen to your phone by installing any kernels.
> * You do it at your own risk and take the responsibility upon yourself
> * You are not to blame FireDroid or its respected developers for any of your loss.
>
> **Basic Notes for all users:**
> * The provided instructions are for FireDroid based on Android 14.
> * These will only work if you follow every section and step precisely
> * Do not continue after something fails! Contact in support group for help
> * The device must have an unlocked bootloader & has Platform Tools installed in pc.
> * If you are moving from any other Android version to Android 14, it is necessary to do CLEAN FLASH (Format Data)
> * Take a backup for safe side (If you are coming from older Android version or doing a clean flash)

### Step 1: Download Required Files
1. Download the latest Android platform tools for Windows from the link below:
   - **Platform Tools Link (Windows)**: [platform-tools-latest-windows.zip](https://dl.google.com/android/repository/platform-tools-latest-windows.zip)

2. Download the Recovery from the link below:
   - **Recovery Link (Non-Dynamic & System_Ext) [ For Android 14 ]:** [OrangeFox Recovery](https://www.pling.com/p/2117593/)

3. Download the FireDroid ROM for Xiaomi Pocophone F1 aka Beryllium from a reliable source.
   - **FireDroid ROM Link**: [DOWNLOAD](https://projectelixiros.com/device/beryllium)

### Step 2: Install ADB and Boot into Fastboot Mode
1. Make sure you have ADB (Android Debug Bridge) installed on your computer. 

2. Extract the downloaded platform-tools zip file on your computer.

3. Connect your device to your computer using a USB cable.

4. Open a command prompt (Windows) or terminal (macOS and Linux) on your computer.

5. Navigate to the location where you extracted the platform-tools.

6. Enter the following command to check if your device is connected and detected by ADB:

```
adb devices
```
> [!Important]
> If your device is listed, proceed to the next step. If not, make sure your device is connected properly and that USB debugging is enabled in the developer options.

7. Now, reboot your device into Fastboot Mode using the following command:

```
adb reboot bootloader
```

### Step 3: Flash OrangeFox Recovery using Fastboot
1. Once your device is in Fastboot Mode, use the following command to check if Fastboot still detects your device:

```
fastboot devices
```

If your device is listed, you are ready to flash the OrangeFox Recovery.

2. Download the OrangeFox Recovery ZIP (`.img` file will be in zip) from the link provided in Step 1.

3. Place the downloaded OrangeFox Recovery image (`.img` file) in the same location as the platform-tools folder on your computer.

4. Now, flash the OrangeFox Recovery using the following command:

```
fastboot flash recovery recovery_file_name.img
```
> [!Important]
> Replace `recovery_file_name.img` with the actual name of the OrangeFox Recovery image you downloaded if needed.

5. After flashing the recovery, use the following command to reboot your Recovery:

```
fastboot reboot recovery
```

Your device will reboot with OrangeFox Recovery installed.

### Step 4: Wipe Data
1. In OrangeFox Recovery, use the touch screen or physical buttons to navigate.

2. Select "Wipe" from the main menu.

3. Wipe Data and Davlik & cache and then proceed to format data by typing yes. And reboot to recovery again.

### Step 5: Flash FireDroid ROM

**System_Ext Non-Dynamic Partitions** `(v4.1 and above versions)` - Clean Flash
```
- Download the latest build (Need to clean flash if you are on 4.0)
- Take a backup for safe side (If you are coming from 4.0 you need to do a clean flash)
- Boot to Recovery
- Wipe Data by going to "Factory reset" section in recovery (only click Format data/factory reset)
﻿﻿- Wipe only Dalvik, cache, system, vendor, system_ext and data
﻿﻿- Flash or sideload the ROM zip and Format data
- If you want to be decrypted and want to stay decrypted then flash DFE
- Reboot System
```

**System_Ext Non-Dynamic Partitions** `(v4.1 and above versions)` - Dirty Flash
```
- Boot to Recovery
- Wipe only Dalvik, cache, system, vendor, system_ext
- Flash or sideload the ROM zip
﻿﻿- Note if you want to be decryption or already decrypted then only flash DFE
- Reboot System
```

> [!Important]
> **May Required Files:**
> * Android 14 OrangeFox Recovery : [Tap here for link](https://www.pling.com/p/2117593/)
> * DFE  : [Tap Here for link](https://telegram.me/wisky_chat/78487)


> [!Note] 
> **Notes specific to device build**
> * If you are coming from ports or MIUI you need to Format Data and flash latest firmware
> * If you are coming from Android 12 or 13 to Android 14 then clean flash is compulsory and format data.
> * If you are encrypted do format Data before flashing build to avoid bugs.

## Changelogs
- Device Change log
- Implemented ViperFX.
- Removed Dirac audio enhancer.
- Implemented Newer MIUI camera.
- Added ProVideo, Front & Back video, Vlog & Long Exposure modes.
- Latest Rex kernel is included.
- and i forgot.

## Notes
- Format if Coming from Android 13 or earlier.
- Always use this [recovery](https://t.me/PocoPhoneGlobalUpdates/7657)/
- Report Bugs with proper logs.
- Fingerprint shutter works in MIUI camera.
- MIUI camera doesn't include Potrait mode.
- Use This [DFE](https://t.me/wisky_chat/79116).
- Must Set the APN manually if network is unavailable.

By @RahulGorai

## Download Link
[Download ROM](https://sourceforge.net/projects/project-firedroid/files/beryllium/FireDroid-Hellix-v2.0-beryllium-14.0-20240224-0702-OFFICIAL.zip/download)

