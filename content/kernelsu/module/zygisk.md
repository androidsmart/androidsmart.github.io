---
type   : kernelsu
title  : Zygisk for KSU Module
date   : 2023-12-01T09:17:35+07:00
slug   : acc
categories: [ksu module]
tags      : [kernelsu, magisk]
keywords  : [ksu module, zygisk, zgisk ksu, Kernelsu]
author : wahyu6070
opengraph:
toc    :
excerpt:
---



Zygisk is a module that enables Zygote injection for ksu, allowing you to use modules that require Zygote access, such as Shamiko and LSPosed. Zygisk is a standalone implementation of Zygisk, which is a feature of Magisk that provides a unified and powerful way to inject code into any process, including system processes². Zygisk works by creating a fuse mount point under `/data/adb/zygisk` and injecting a library into Zygote that loads modules from that mount point.

Zygisk has several advantages over other methods of Zygote injection, such as:

- **Stronger hiding**: Zygisk does not modify any system properties or files, making it harder to detect by anti-root apps.
- **Compatibility**: Zygisk supports both KernelSU and Magisk, and can work with modules that are designed for Zygisk API.
- **Performance**: Zygisk uses fuse to mount modules, which is faster and more efficient than copying files or using bind mounts.

To use Zygisk, you need to meet the following requirements:

- **General**: No multiple root implementation installed, SELinux enforcing.
- **KernelSU**: Minimal KernelSU version: 10940 (kernel) and 10942 (ksud), Kernel has full SELinux patch support.
- **Magisk**: Minimal version: 26300, Built-in Zygisk turned off¹

You can download the latest Zygisk manager from [here](https://github.com/Dr-TSNG/ZygiskNext/releases) and follow the installation instructions from [here](https://github.com/Dr-TSNG/ZygiskNext). You can also watch this video on how to build Zygisk for non-GKI devices.

Zygisk is a powerful and innovative solution for Zygote injection, and it can open up new possibilities for Android customization and optimization. If you are looking for a way to use Zygote-based modules on your rooted device, you should give Zygisk a try.


