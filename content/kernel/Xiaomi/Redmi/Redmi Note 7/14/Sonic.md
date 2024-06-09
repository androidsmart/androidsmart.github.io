---
type   : kernel
title  : Download Sonic Kernel Redmi Note 7
date   : 2024-06-08T09:17:35+07:00
slug   : sonic-lavender
categories: [kernel]
tags      : [lavender]
keywords  : [Redmi Note 7]
author : 
---

Download Custom kernel Sonic for redmi note 7 (Lavender).

## Changelog
- Initial ACK + CLO kernel
- Merge tag 'ASB-2024-04-05_4.19-stable' of ACK
- Merge tag 'LA.UM.12.2.1.r1-03100-sdm660.0' of CLO
- Merge tag 'LA.UM.12.2.1.r1-03100-sdm660.0' in WLAN
- Merge 'fs/exfat' from namjaejeon/linux-exfat-oot
- pick mm revert patch from Tashar02's scarlet kernel
- drop pagecaches on screen-off after 200ms
- Undervolt SDM660 CPU and GPU by 60mV (thx wHo_EM_i)
- block userspace calls for scheduler and swappiness
- Disable Debugs/Loggings/Tracing at various places
- Don't allow userspace to write to /dev/kmsg
- Disable crc and make it sw toggable
- Perform PID map reads on the little CPU cluster
- vmstat: Increase vmstat interval to 10s.
- netfilter: Add support for TTL fixation
- Never allow userspace affect load scale  
- Nuke hysteresis feature and sched_boost
- selinux: avc: Only log denials
- vfs: Bump max inline dirent name size
- Reduce vfs_cache_pressure to 50
- Debloat and optimize lavender defconfig
- Skip OOM killer toggles when kernel is compiled
- Avoid L2PC on big cluster CPUs
- printk: disable console suspend by default
- pwm: treat double free as a debug message
- Don't add event timer for unused autorefresh feature
- Never allow allocations more than our physical memory
- Not Mentioned commits picked from S0NiX CLO V3.0
- kernelSU is updated till version 11797 ( use 9.2 Apk )

## Note
- Only For Linux 4.19 ROMs
- Retrofit Dynamic Partition
- Please report bugs with logcat.
- Credits is written in Changelogs
- Use KSU manager 9.2 : Download  

## Link
[kernel](https://www.pling.com/p/2060581/)

