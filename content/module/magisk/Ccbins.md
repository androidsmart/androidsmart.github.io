---
type   : module
title  : Cross Compiled Binaries (ccbins) Magisk kernelsu Module
date   : 2023-12-01T09:17:35+07:00
slug   : ccbins
categories: [magisk module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk module, Magneter, module gaming, Kernelsu]
---



The **Cross Compiled Binaries (ccbins)** is a term script that installs a collection of ever-growing binaries cross-compiled for Android¹. It is a successor and combination of Curl and GNU mods, and more¹.

## Overview

The ccbins module is hosted on GitHub under the Magisk-Modules-Repo organization¹. It was created by Zackptg5 and has seen numerous updates since its initial release¹.

## Features

The ccbins module provides a variety of features:

- **Overhaul mounting for Magisk v26**: The module can now mount on the fly without the need for a reboot for Magisk 26+ installs¹.
- **Split upgrade path**: Users with Magisk versions less than v26 can use ccbins legacy, which is essentially v23¹. This version still pulls the latest binaries and is completely functional for the foreseeable future¹.
- **Install all requirements during initial zip install**: All requirements are installed during the initial zip install rather than later¹.

## Change Log

The ccbins module has seen numerous updates since its initial release. Here are some of the notable changes:

- **v11 - 8.13.23**: Removed the terminalmods dependency, stopped using /sdcard for any files due to scoped storage, updated busybox and curl binaries, and added KSU support¹.
- **v10 - 4.11.23**: Overhauled mounting for Magisk v26, split the upgrade path, and installed all requirements during the initial zip install¹.
- **v9.2 - 8.5.22**: Updated the curl binary and moved terminalmods to a new repo¹.
- **v9.1 - 1.9.2022**: Fixed a bug with the connection test¹.
- **v9.0 - 11.27.2021**: Updated the curl binary, streamlined the installer process, and overhauled wireguard support¹.

## Install
You can install in magisk,kernelsu and apatch

## Usage
Open terminal emulator

``su -c ccbins``

## Conclusion

The ccbins Magisk module is a powerful tool for Android users, providing a collection of cross-compiled binaries that enhance the functionality of their devices. With regular updates and a robust set of features, it's a valuable addition to any Magisk user's toolkit.

For more information about the ccbins Magisk module, you can visit the [official GitHub page](https://github.com/Magisk-Modules-Repo/ccbins)

## Link
[Pling](https://www.pling.com/p/2122998/)

