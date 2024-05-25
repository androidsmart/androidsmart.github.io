---
type   : kernel
title  : Download Kizuna Kernel Redmi Note 4x Mido
date   : 2024-05-24T09:17:35+07:00
slug   : kizuna-kernel-mido
categories: [kernel]
tags      : [mido]
keywords  : [Redmi Note 4X]
author : clarityci
---

Download Custom kernel Kizuna for redmi note 4x mido


## Changelogs
- Merge latest 4.9.268 linux kernel update from google common
- Merge latest wireguard-linux-compat tag '1.0.20210503'
- Re-merge reverted CAF tag LA.UM.9.6.2.r1-4200.89xx commit regarding to mdss/fb
- Merge a11/umn.edu.revert branch from msm-4.9 kudproject (@krascgq)
- Merge prlmk update (@darkhz)
- Merge backport of micro optimize PID from msm-4.14 floral (@kerneltoast)
- Misc cleanup for memory management
- Misc scheduler and other changes from msm-4.14 floral (@kerneltoast)
- Silence adreno gpu logging
- Other misc fixes and cleanup

## NOTES
- Do not install this on 3.18 based ROM, or you may face some critical bugs due ROMs incompatibility
- For overclocked build, make sure to install custom powerhint module if you're using Nusantara ROM
  (It's separated for ppl want to play PUBG or not :p)
- Compatible with android 10 - 11
- Please read here (https://t.me/clarityci/443) if you've any question

## Thanks to
- Thanks to @lmaoicon and @nE0sIghT for their initial bringup and a ton of device specific fixes on the kernel :3
- Thanks to @DennySPB, @imjyotiraditya, @laststandrighthere & @zeta96 for their EAS bringup, backport & optimization :3 
- Thanks to @rafiester & @wldyn that already participated for kernel development and testing
- Thanks to all member that parcitipated in this project that help to solve and fix all the issue for this 4.9 project

## Link
[kernel](https://bit.ly/3uo5hV9)

