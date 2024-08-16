---
type   : cusrom
title  : Android Image Kitchen Tool (Aik)
date   : 2024-03-19T09:17:35+07:00
slug   : aik
categories: [tool]
tags      : [aik]
keywords  : [android Image Kithen Tool]
author : osM0sis
---

**Android Image Kitchen** is a versatile tool that allows users to unpack, repack, and modify kernel and recovery images on Android devices. It's a must-have for developers and enthusiasts looking to customize their Android experience.

## Features
- **Unpack/Repack Kernel and Recovery Images**: Easily modify the contents of your boot images.
- **Edit the Ramdisk**: Customize the boot process according to your needs.
- **Cross-Platform Compatibility**: Works on Windows, Android, Linux, and Mac.

## How to Use
1. **Download the Tool**: Visit the official XDA thread¹ or GitHub repository² to download Android Image Kitchen.
2. **Unpack an Image**: Use the `unpackbootimg` command to extract the contents of a kernel or recovery image.
3. **Make Your Modifications**: Edit the ramdisk or other components as needed.
4. **Repack the Image**: Use the `mkbootimg` command to create a new image file from your modified contents.

## Conclusion
Android Image Kitchen is a powerful tool for anyone interested in Android development or customization. With its user-friendly commands and cross-platform support, it simplifies the process of modifying Android images.

## Instructions
1. Unzip.
2. Either use the command-line "unpackimg <image-filename.img>", or simply drag-and-drop the image. This will split the image and unpack the ramdisk to a subdirectory.
3. Alter the ramdisk as you like.
4. The repackimg script requires no input and simply recombines the previously split kernel with the newly packed modified ramdisk using all the original image information (which was also split and saved).
5. The cleanup script resets the folder to its initial state, removing the split_img+ramdisk directories and any new packed ramdisk or image files.

There are a few optional, advanced command-line arguments for repackimg: "--original", which will cause it to repack using the original split ramdisk instead of repacking, this is useful for testing or trimming dumps; "--origsize", which will cause it to repack then pad it to the size of the original image, this is useful for repacking dumps to then be fastboot flashed; "--level" with 1-9 and possibly 0 allows changing the compression level used to repack to more closely match the original; "--avbkey" with (optionally path and) a keyname allows changing from the default AOSP verity key; "--forceelf" to attempt to make an older unpacked Sony ELF file repack as an ELF.

All scripts also allow unpacking/repacking with the current directory instead of the AIK directory if "--local" is the first command-line argument.

Supported ramdisk compression formats in the *-ramdiskcomp file are gzip, lzop, lzma, xz, bzip2, lz4, lz4-l (for lz4 legacy), cpio (for uncompressed), and empty (for no ramdisk).

Usage is similar for the Android and Linux versions, again, just review the release notes for them.

Hopefully this is some help to someone. It's been extremely useful for me in my messing around with kernel ramdisks, which is why I created it in the first place.


## Source
[Xda](https://xdaforums.com/t/2073775/)

## Link
[Android](https://xdaforums.com/attachments/update-aik-mobile-installer-v3-8-all-signed-zip.5300921/)

[Windows](https://xdaforums.com/attachments/android-image-kitchen-v3-8-win32-zip.5300919/)

[Linux](https://xdaforums.com/attachments/aik-linux-v3-8-all-tar-gz.5300923/)

