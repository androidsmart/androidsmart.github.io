---
type   : module
title  : Giga Internet Magisk and kernelsu modules
slug : guga-internet
date   : 2024-06-10T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [Gps Boost]
author : Oleg_Skalskiy
---

This Magisk module is designed to improve network performance on Android devices by optimizing various system settings related to Wi-Fi and mobile data connections.

## Changelog
- Changed network MTU (Maximum Transmission Unit) to advanced detection
- Changed timeout control (in seconds) to close a connection in FIN-WAIT-2 state
- Security issues in using the Check CONNMARK function have been closed
- The MARK chain has been rewritten to use the function
- LTE-A, A-GPS activation rework
- Rebuilt strict LTE mode
- LTE Advanced commands for the modem are activated
- MSAA enabled by default as requested by several people
- Enabled AKF (Automatic Kernel Fix) to automatically reboot the device in case of critical kernel errors
- Added function to change TTL to a random value

## Notes
BusyBox is required!

## Link
[download](https://t.me/wahyu6070files/514)



