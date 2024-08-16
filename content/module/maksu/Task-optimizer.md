---
type   : module
title  : Task Optimizer Magisk Ksu Module
slug : task-optimizer
date   : 2024-03-13T09:17:35+07:00
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
---


This script is designed to optimize system performance by prioritizing tasks, adjusting CPU affinity, and setting real-time priorities for critical processes. It begins by defining functions to change various parameters such as CPU affinity, process priorities, and IRQ affinities. 

The main optimization function applies these settings to specific tasks and threads, ensuring that critical tasks run on performance cores while less important tasks are relegated to power-saving cores. Additionally, it adjusts priorities for system services, graphics rendering, touch input handling, and more.

The script is initiated triggering the optimization process, which is indicated by notifications at the beginning and end. Overall, it aims to enhance system responsiveness and efficiency by fine-tuning resource allocation and task scheduling.


## Link

[Pling](https://androidsmart.github.io/d/202403/task-optimizer/)
