---
type   : cusrom
title  : Download Orion OS Android 14 Redmi 12 5G | Poco M6 pro Sky
slug   : orion-a14-sky
date   : 2024-08-20T09:17:35+07:00
categories: [rom]
tags      : [sky]
keywords  : [poco m6 pro]
---

Download Custom Rom Orion OS Android 14 Xiaomi Redmi 12 5G and Poco M6 pro Sky.

## Changelog
- Drop Adaptive Sound Engine
- Apply wakelock for notification sound
- Optimize notification scaling/rendering
- Never enable dual tone on landscape battery styles
- Fix crash after dismissing a split screen pair
- Integrate Google Lens into Screenshot UI
- Correctly monet theme the new volume panel
- Fix Notification Sound After Reboot

## flashing guide
### recovery roms
- open twrp/ofox/pbrp recovery
- format /data
- flash rom:
   - install > select rom.xxx.zip
   - or adb sideload rom.xxx.zip (from a computer)
- reboot to recovery
- flash gapps (in case of vanilla rom):
   - same as flashing rom, see above
- flash fw (no need if already on latest fw):
   - same as flashing rom, see above
- reboot to system

### fastboot roms
- reboot to bootloader {power + vol(-)}
- fastboot update —skip-reboot rom.xxx.zip
- fastboot reboot recovery
- format /data
- reboot to system

## NOTES
- Gapps & Vannila builds
- clean flash recommended
- Use latest Firmware 1.0.5 UMWINXM hyperOS.
 
## CREDITS
- Thanks to @lostark13, @redducc and @jendermine for base device trees.
- Thanks For testing @Zoro0_7


## Link
[ROM](https://sourceforge.net/projects/orionos/files/A14/sky/)

[Firmware](https://xmfirmwareupdater.com/firmware/sky/stable/OS1.0.5.0.UMWINXM/)


