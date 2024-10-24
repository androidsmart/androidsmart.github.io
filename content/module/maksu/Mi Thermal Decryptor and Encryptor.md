---
type   : module
title  : Mi Thermal Decryptor and Encryptor Magisk Ksu Module
slug   : Mi Thermal Decryptor and Encryptor
date   : 2024-08-28T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
author :
by : ghostrider
version : v1.0
---

Encrypt or decrypt thermal configs used by mi-thermald on all Xiaomi devices. You can use this to decrypt, for example, thermal-normal.conf, edit it and then encrypt it back (mi-thermald accepts only encrypted thermal configs, not plain text). 

## Usage
mi-thermal-crypt [OPTION]...

Encrypt/decrypt mi_thermald configs

  -h, --help            Print help and exit
  
  -V, --version         Print version and exit
  
  -i, --infile=STRING   Input filename
  
  -o, --outfile=STRING  Output filename
  
  -e, --encrypt         Encrypt input plain text file to output file
                          (default=off)

                         
                          
## Notes
Only for Xiaomi devices


## Author
source binary tool by ghostrider
compiled for arm by litylix
module zip by litylix


## Link
[Download](https://t.me/wahyu6070files/1079)

[Source](https://github.com/adithya2306/mi-thermal-crypt)
