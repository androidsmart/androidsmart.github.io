---
type   : cusrom
title  : Download Lineage 20 OS Android 13 Poco X6 Garnet
slug   : lineage20-a13-garnet
date   : 2024-03-24T09:17:35+07:00
categories: [rom]
tags      : [garnet]
keywords  : [Poco X6]
---


LineageOS is a popular custom ROM for Android devices known for its performance, stability, and adherence to a stock Android experience. With Android 13 now rolling out, many Poco X6 users are eagerly awaiting a LineageOS 20 build for their device.

This guide will provide an overview of LineageOS 20 for Android 13 on the Poco X6, including potential timelines, download instructions (once available), and installation steps.


## Installation
Note 1: The lineage recovery does not have working touch screen so you need to use volume buttons to navigate arround
Note 2: You need to be miui 14 rom for your respective region in case you are you may skip step 4 to 6

1. Flash the provided recovery image via fastboot using "fastboot flash recovery recover.img"
2.  Reboot to recovery using either volume + and power button combo or via fastboot command
3. Navigate to Apply Update  > Apply from ADB with volume button and select with power button
4. adb sideload the fw zip using "adb sideload fw_garnet*.zip" 
5. Once adb sideload finishes reboot back into recovery
6. Navigate to Apply Update  > Apply from ADB 
7. adb sideload the lineage zip using "adb sideload lineage-20.0-*-garnet.zip" 
8. Factory reset/format data
9. Reboot to system
In case you want to use your own google apps package LiteGapps is recomended, you can install this by rebooting back into recovery after step 7 


## Important Considerations

* Installing a custom ROM voids your device's warranty.
* The installation process can carry risks such as bricking your device (rendering it unusable).
* Custom ROMs may not be as stable as official releases and may lack certain features.

## Conclusion

LineageOS 20 on Android 13 promises an exciting experience for Poco X6 users seeking a stock Android feel with the latest features. While there's no official release yet, keep an eye on the LineageOS download page and relevant forums for updates. Remember to proceed with caution and ensure you have a compatible build and a thorough understanding of the installation process before flashing LineageOS on your Poco X6.

## Link
[ROM](https://sourceforge.net/projects/garnetrandom/files/LOS/20240321/)

[Firmware](https://sourceforge.net/projects/garnetrandom/files/FW/)

