---
type   : module
title  : Advanced Charging Controller
slug : Advanced Charging Controller
date   : 2024-10-30
categories: [module]
tags : [magisk module, kernelsu module, apatch module]
keywords  : [magisk]
author : 
---

# Advanced Charging Controller (ACC)


---
- [DESCRIPTION](#description)
- [LICENSE](#license)
- [DISCLAIMER](#disclaimer)
- [WARNINGS](#warnings)
- [DONATIONS](#donations)
- [PREREQUISITES](#prerequisites)
- [QUICK START GUIDE](#quick-start-guide)
  - [Notes](#notes)
- [BUILDING AND/OR INSTALLING FROM SOURCE](#building-andor-installing-from-source)
  - [Dependencies (Build)](#dependencies-build)
  - [Build Tarballs and Flashable Zips](#build-tarballs-and-flashable-zips)
    - [Notes](#notes-1)
  - [Install from Local Source or GitHub](#install-from-local-source-or-github)
    - [Notes](#notes-2)
- [DEFAULT CONFIGURATION](#default-configuration)
- [SETUP/USAGE](#setupusage)
  - [Terminal Commands](#terminal-commands)
- [PLUGINS](#plugins)
- [NOTES/TIPS FOR FRONT-END DEVELOPERS](#notestips-for-front-end-developers)
  - [Basics](#basics)
  - [Installing/Upgrading ACC](#installingupgrading-acc)
  - [Uninstalling ACC](#uninstalling-acc)
  - [Initializing ACC](#initializing-acc)
  - [Managing ACC](#managing-acc)
- [TROUBLESHOOTING](#troubleshooting)
  - [`acc -t` Results Seem Inconsistent](#acc--t-results-seem-inconsistent)
  - [Charging Switch](#charging-switch)
  - [Custom Max Charging Voltage And Current Limits](#custom-max-charging-voltage-and-current-limits)
  - [Diagnostics/Logs](#diagnosticslogs)
  - [Finding Additional/Potential Charging Switches Quickly](#finding-additionalpotential-charging-switches-quickly)
  - [Install, Upgrade, Stop and Restart Processes Seem to Take Too Long](#install-upgrade-stop-and-restart-processes-seem-to-take-too-long)
  - [Restore Default Config](#restore-default-config)
  - [Samsung, Charging _Always_ Stops at 70% Capacity](#samsung-charging-always-stops-at-70-capacity)
  - [Slow Charging](#slow-charging)
  - [Unable to Charge](#unable-to-charge)
  - [Unexpected Reboots](#unexpected-reboots)
  - [WARP, VOOC and Other Fast Charging Tech](#warp-vooc-and-other-fast-charging-tech)
  - [Why Did accd Stop?](#why-did-accd-stop)
- [POWER SUPPLY LOGS (HELP NEEDED)](#power-supply-logs-help-needed)
- [LOCALIZATION](#localization)
- [TIPS](#tips)
  - [_Always_ Limit the Charging Current If Your Battery is Old and/or Tends to Discharge Too Fast](#always-limit-the-charging-current-if-your-battery-is-old-andor-tends-to-discharge-too-fast)
  - [Generic](#generic)
  - [Google Pixel Devices](#google-pixel-devices)
  - [Override Battery mAh Capacity](override_battery_mah_capacity)
  - [Override Broken Temperature Sensor](override_broken_temperature_sensor)
- [FREQUENTLY ASKED QUESTIONS (FAQ)](#frequently-asked-questions-faq)
- [LINKS](#links)


---
## DESCRIPTION

ACC is an Android software mainly intended for [extending battery service life](https://batteryuniversity.com/article/bu-808-how-to-prolong-lithium-based-batteries).
In a nutshell, this is achieved through limiting charging current, temperature and voltage.
Any root solution is supported.
Regardless of whether the system is rooted with KernelSU/Magisk, the installation is always "systemless".


---
## LICENSE

Copyright 2017-2024, VR25

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.


---
## DISCLAIMER

Always read/reread this reference prior to installing/upgrading this software.

While no cats have been harmed, the author assumes no responsibility for anything that might break due to the use/misuse of it.

To prevent fraud, do NOT mirror any link associated with this project.
Do NOT share builds (tarballs/zips)! Share official links instead.


---
## WARNINGS

ACC manipulates Android low level ([kernel](https://duckduckgo.com/lite/?q=kernel+android)) parameters which control the charging circuitry.
The author assumes no responsibility under anything that might break due to the use/misuse of this software.
By choosing to use/misuse it, you agree to do so at your own risk!

Some devices, notably from Xiaomi (e.g., Poco X3 Pro), have a faulty PMIC (Power Management Integrated Circuit) that can be triggered by acc.
The issue blocks charging.
Ensure the battery does not discharge too low.
Using acc's auto shutdown feature is highly recommended (default shutdown_capacity is 5).

Refer to [this XDA post](https://forum.xda-developers.com/t/rom-official-arrowos-11-0-android-11-0-vayu-bhima.4267263/post-85119331) for additional details.

[lybxlpsv](https://github.com/lybxlpsv) suggests booting into bootloader/fastboot and then back into system to reset the PMIC.


---
## DONATIONS

Please, support the project with donations ([links](#links) at the bottom).
As the project gets bigger and more popular, the need for coffee goes up as well.


---
## PREREQUISITES

- [Must read - how to prolong lithium ion batteries lifespan](https://batteryuniversity.com/article/bu-808-how-to-prolong-lithium-based-batteries)
- Android or KaiOS
- Any root solution (e.g., KernelSU, Magisk, SuperSU, etc)
- [Busybox\*](https://github.com/Magisk-Modules-Repo/busybox-ndk) (only if not rooted with KernelSU or Magisk)
- Non KernelSU/Magisk installs require a way of running `/data/adb/vr25/acc/service.sh` on boot to initialize acc.
- Terminal emulator
- Root text editor (optional)

\* A busybox binary can simply be placed in `/data/adb/vr25/bin/`.
Permissions (`0755`) are set automatically, as needed.
Precedence: /data/adb/vr25/bin/busybox > KernelSu's or Magisk's busybox > system's busybox

Other executables or static binaries can also be placed in `/data/adb/vr25/bin/` (with proper permissions) instead of being installed system-wide.


---
## QUICK START GUIDE


0. All commands/actions require root.

1. Install/upgrade: flash\* the zip or use a front-end app.
There are two additional ways of upgrading: `acc --upgrade` (online) and `acc --flash` (zip flasher).
Rebooting after installation/removal is generally unnecessary.
Manual uninstall before upgrade is unnecessary.

2. [Optional] run `acc` (wizard). That's the main command to remember.

3. [Optional] run `acc pause_capacity resume_capacity` (default `75 70`) to set the battery levels at which charging should pause and resume, respectively.

4. If you come across any issues, refer to the [troubleshooting](#troubleshooting), [tips](#tips) and [FAQ](#frequently-asked-questions-faq) sections below.
Read as much as you can, prior to reporting issues and/or asking questions.
Oftentimes, solutions/answers will be right before your eyes.


### Notes

Steps `2` and `3` are optional because there are default settings.
For details, refer to the [default configuration](#default-configuration) section below.
Users are encouraged to try step `2` - to familiarize themselves with the available options.

Settings can be overwhelming. Start with what you understand.
The default configuration has you covered.
Don't ever feel like you have to configure everything. You probably shouldn't anyway - unless you really know what you're doing.

Uninstall: run `acc --uninstall` or flash\* `/data/adb/vr25/acc-data/acc-uninstaller.zip`.

ACC runs in some recovery environments as well.
Unless the zip is flashed again, manual initialization is required.
The initialization script is `/data/adb/vr25/acc/service.sh`.


---
## BUILDING AND/OR INSTALLING FROM SOURCE


### Dependencies (Build)

- git, wget, or curl (pick one)
- zip


### Build Tarballs and Flashable Zips

1. Download and extract the source code: `git clone https://github.com/VR-25/acc.git`
or `wget  https://github.com/VR-25/acc/archive/master.tar.gz -O - | tar -xz`
or `curl -L#  https://github.com/VR-25/acc/archive/master.tar.gz | tar -xz`

2. `cd acc*`

3. `sh build.sh` (or double-click `build.bat` on Windows 10+, if you have Windows subsystem for Linux (with zip) installed)


#### Notes

- `build.sh` automatically sets/corrects `id=*` in `*.sh` and `update-binary` files.
To skip generating archives, run the build script with a random argument (e.g. `sh build.sh h`).

- To update the local source code, run `git pull --force` or re-download it (with `wget`/`curl`) as described above.


### Install from Local Source or GitHub

- `[export installDir=<parent install dir>] sh install.sh` installs acc from the extracted source.

- `sh install-online.sh [-c|--changelog] [-f|--force] [-k|--insecure] [-n|--non-interactive] [%parent install dir%] [commit]` downloads and installs acc from GitHub - e.g., `sh install-online.sh dev`.
The order of arguments doesn't matter.
For upgrades, if `%parent install dir%` is not supplied, the original/current is used.

- `sh install-tarball.sh [module id, default: acc] [parent install dir (e.g., /data/data/mattecarra.accapp/files)]` installs the tarball (`acc*gz`) from the script's location.
The archive must be in the same directory as this script - and obtained from GitHub: https://github.com/VR-25/acc/archive/$commit.tar.gz (`$commit` examples: `master`, `dev`, `v2020.5.20-rc`).

- One can also use a single command to download and install acc:

`curl -sSL https://raw.githubusercontent.com/VR-25/acc/dev/install-online.sh | /system/bin/sh -s dev`

`wget -qO- https://raw.githubusercontent.com/VR-25/acc/dev/install-online.sh | /system/bin/sh -s dev`


#### Notes

- `install-online.sh` is the `acc --upgrade` back-end.

- The default parent installation directories, in order of priority, are: `/data/data/mattecarra.accapp/files/` (ACC App, but only for non KernelSU/Magisk installs), `/data/adb/modules/` (KernelSU/Magisk) and `/data/adb/vr25/` (other root solutions).

- No argument/option is strictly mandatory.
The exception is `--non-interactive` for front-end apps.

- The `--force` option to `install-online.sh` is meant for re-installation and downgrading.

- `sh install-online.sh --changelog --non-interactive` prints the version code (integer) and changelog URL (string) when an update is available.
In interactive mode, it also asks the user whether they want to download and install the update.

- You may also want to read [Terminal Commands](#terminal-commands) > `Exit Codes` below.


---
## DEFAULT CONFIGURATION
```
#DC#

configVerCode=202405180

allowIdleAbovePcap=true
ampFactor=
battStatusWorkaround=true
capacity=(5 50 70 75 false)
cooldownCurrent=
cooldownRatio=()
currentWorkaround=false
forceOff=false
language=en
offMid=true
prioritizeBattIdleMode=true
rebootResume=false
resetBattStats=(false false false)
temperature=(35 50 45 55)
tempLevel=0
voltFactor=

applyOnBoot=()

applyOnPlug=()

battStatusOverride=''

chargingSwitch=()

idleApps=()

maxChargingCurrent=()

maxChargingVoltage=()

runCmdOnPause=''



# SYNTAX

# allowIdleAbovePcap=true|false
# ampFactor=1000|1000000
# applyOnBoot=([CTRL_FILE1::RAW_VALUE[::DEFAULT]] [CTRL_FILE2::RAW_VALUE[::DEFAULT]...] [--exit])
# applyOnPlug=([CTRL_FILE1::RAW_VALUE[::DEFAULT]] [CTRL_FILE2::RAW_VALUE[::DEFAULT]...])
# battStatusOverride=Idle|Discharging|'code to PRINT value for _status'
# battStatusWorkaround=true|false
# capacity=(shutdown_capacity=% cooldown_capacity=% resume_capacity=% pause_capacity=% capacity_mask=true|false)
# chargingSwitch=([CTRL_FILE1 ON OFF [CTRL_FILE2 ON OFF...] [--]])
# cooldownCurrent=mA|mA%
# cooldownRatio=(cooldown_charge=seconds cooldown_pause=seconds)
# currentWorkaround=true|false
# forceOff=true|false
# idleApps=(comma or space-separated patterns matching Android package names)
# language=LANGUAGE_CODE
# maxChargingCurrent=(MILLIAMPS [CTRL_FILE1::RAW_VALUE::DEFAULT CTRL_FILE2::RAW_VALUE::DEFAULT...])
# maxChargingVoltage=(MILLIVOLTS [CTRL_FILE1::RAW_VALUE::DEFAULT CTRL_FILE2::RAW_VALUE::DEFAULT...] [--exit])
# offMid=true|false
# prioritizeBattIdleMode=true|false|no
# rebootResume=true|false
# resetBattStats=(reset_batt_stats_on_pause=true|false reset_batt_stats_on_unplug=true|false reset_batt_stats_on_plug=true|false)
# runCmdOnPause='COMMAND...'
# temperature=(cooldown_temp=ºC max_temp=ºC resume_temp=ºC shutdown_temp=ºC)
# tempLevel=%
# voltFactor=1000|1000000



# NOTES

# Do not edit this in Windows Notepad, ever!
# It replaces LF (Linux/Unix) with CRLF (Windows) line endings.

# Nullifying values that should not be null causes unexpected behavior.
# However, doing it with "--set var=" restores the default value of "var".
# In other words, for regular users, "--set" is safer than modifying the config file directly.

# Do not feel like you must configure everything!
# Do not change what you don't understand.

# The daemon does not have to be restarted to apply changes. It picks them up automatically within seconds.



# INTERNAL FUNCTIONS

# at HH:MM command1, commmand2...   scheduler
# e.g.,
#   at 2:14 acc --notif 2:14 AM now\!
#   at 22:30 acc -n 22:30 now\!

# batt_cap   print battery level

# calc <operation...>   float  calculator

# set_temp_level <0-100>   refer to temp_level (tl) below

# voltage_now   prints the instantaneous charging voltage



# INTERNAL VARIABLES

# $_DPOL  discharge polarity (+|-)
# $_status   Charging|Discharging|Idle
# $_STI   switch test iterations (default: 15)
# $batt   expands to the /sys/class/power_supply/battery (or equivalent) directory
# $battCapacity   $batt/capacity file
# $battStatus   $batt/status file
# $currFile   current_now file
# $idleThreshold   mA absolute value to consider charging status=Idle (default: 40)
# $temp   temperature reporting file
# ${isAccd:-false}   true|false (whether accd in running)



# The "date" command
# $(date +FORMAT)
# FORMAT specifies display format string using strftime(3) syntax:

# %% literal %             %n newline              %t tab
# %S seconds (00-60)       %M minute (00-59)       %m month (01-12)
# %H hour (0-23)           %I hour (01-12)         %p AM/PM
# %y short year (00-99)    %Y year                 %C century
# %a short weekday name    %A weekday name         %u day of week (1-7, 1=mon)
# %b short month name      %B month name           %Z timezone name
# %j day of year (001-366) %d day of month (01-31) %e day of month ( 1-31)
# %N nanosec (output only)

# %U Week of year (0-53 start sunday)   %W Week of year (0-53 start monday)
# %V Week of year (1-53 start monday, week < 4 days not part of this year)

# %F "%Y-%m-%d"     %R "%H:%M"        %T "%H:%M:%S"    %z numeric timezone
# %D "%m/%d/%y"     %r "%I:%M:%S %p"  %h "%b"          %s unix epoch time
# %x locale date    %X locale time    %c locale date/time



# ALIASES (for use with --set only)

# allow_idle_above_pcap aiapc
# amp_factor af
# apply_on_boot ab
# apply_on_plug ap
# batt_status_override bso
# batt_status_workaround bsw
# capacity_mask cm
# charging_switch s
# cooldown_capacity cc
# cooldown_charge cch
# cooldown_current cdc
# cooldown_pause cp
# cooldown_temp ct
# current_workaround cw
# force_off fo
# idle_apps ia
# lang l
# max_charging_current mcc
# max_charging_voltage mcv
# max_temp mt
# resume_temp rt
# off_mid om
# pause_capacity pc
# prioritize_batt_idle_mode pbim
# reboot_resume rr
# reset_batt_stats_on_pause rbsp
# reset_batt_stats_on_plug rbspl
# reset_batt_stats_on_unplug rbsu
# resume_capacity rc
# run_cmd_on_pause rcp
# shutdown_capacity sc
# shutdown_temp st
# temp_level tl
# volt_factor vf



# FINE, BUT WHAT DOES EACH OF THESE VARIABLES ACTUALLY MEAN?


# configVerCode #
# This is checked during updates to determine whether the config should be patched. Do NOT modify.
# The value is not necessarily the same as acc's version code.


# allow_idle_above_pcap (aiapc) #
#
# Type: Boolean
# Default: true
#
# If set to false, accd will avoid idle mode (if possible) when capacity > pause_capacity.
# This is useful for forever-plugged setups, where battery longevity is a top priority.
# Idle mode is good, but "storing" a highly charged battery for a LONG time is a bad idea.
# The recommended capacity range for long-term/forever-plugged is 40-60%.


# amp_factor (af) # volt_factor (vf) #
#
# Type: Integer (usually 1000000 or 1000)
# Defaults: Null
#
# Unit multiplier for conversion (e.g., 1V = 1000000uV, 1A = 1000000mA).
# ACC can automatically determine the units, but the mechanism is not 100% foolproof.
# Leave those properties alone, unless acc -i misreports current/voltage values.


# apply_on_boot (ab) # apply_on_plug (ap) #
#
# Type: String (CTRL_FILE1::VALUE::DEFAULT CTRL_FILE2::VALUE::DEFAULT... --exit)
# Default: Null
#
# e.g., acc -s ab=wireless/voltage_max::9000000 (forces fast wireless charging on Pixel devices)
#
# This is for general kernel tweaking.
# For ab, settings are applied on boot and on daemon start/restart.
# For ap, settings are applied periodically, while charging.
#
# Default values (optional) are restored when the daemon stops.
# "--exit" (for ab only) instructs accd to stop after applying settings.


# batt_status_override (bso) #
#
# Type: String (Idle|Discharging|'code to PRINT value for _status')
# Default: Null
#
# Overrides the battery status determined by the not_charging function.
# It can be Idle, Discharging (both case sensitive), or a script to PRINT the desired value for the _status variable.
# When it's Idle or Discharging, _status will be set to that value if the charging switch state is off.
# This only works in conjunction with an enforced charging switch (set manually, has a trailing " --").
#
# Usage scenario: the switch "main/cool_mode 0 1" supports idle mode. However, sometimes it doesn't respond soon enough (e.g., due to fast charging).
# The user can then enforce it with "acc -ss" and set "batt_status_override=Idle".
# This means, when "main/cool_mode" is "on" (0), _status will be determined by the not_charging function (as usual), but when it's off (1), _status will be Idle, overriding the not_charging function's logic.
#
# If the user were to write their own logic, it would be something like the following:
# batt_status_override='[ $(cat main/cool_mode) -eq 1 ] && printf Idle || :'
# The "|| :" part is mandatory to avoid issues with "set -e", which acc uses extensively.


# batt_status_workaround (bsw) #
#
# Type: Boolean
# Default: true
#
# With this enabled (true), in addition to just reading POWER_SUPPLY_STATUS, if the battery is "Charging" and current is within 40mA (inclusive), battery status is considered "Idle".
# Status is considered "Discharging", if the current's polarity changes after calling the disable_charging function.
# By not relying solely on the information provided by POWER_SUPPLY_STATUS, this approach dramatically boosts compatibility.
# This must be disabled on systems that report wrong/misleading charging current values.


# capacity_mask (cm) #
#
# Type: Boolean
# Default: false
#
# This forces Android to report "capacity = (capacity - shutdown _capacity) * 100 / (pause_capacity - shutdown_capacity)", effectively masking capacity limits.
# It also prevents Android from getting capacity readings below 2%, since some systems shutdown before battery level actually drops to 0%.
# Use case: Secretly install acc on a relative's device, and enable this, so that they always see the regular 0-100% battery level scale.


# charging_switch (s) #
#
# Type: String (CTRL_FILE1 ON OFF CTRL_FILE2 ON OFF... --)
# Default: Null (automatic)
#
# If unset, acc cycles through its database and sets the first switch/group that successfully disables charging.
# If later, the set switch/group fails 3 times in a row, acc unsets it, moves it to the end of the list and repeats the above.
# If all switches fail to disable charging, chargingSwitch is unset and acc/d exit with code 7.
#
# This automated process can be disabled by appending " --" to the switch/group.
# e.g., acc -s s="battery/charging_enabled 1 0 --"
# "acc -ss" always appends " --".
#
# Certain switches tend to be problematic/unreliable under specific condition (e.g., screen off, fast charging, heavy load).
# Sometimes, this is caused by rogue thermal management programs (e.g., mi_thermald).
# To mitigate this, one may want to try force_off or a thermal mod.


# cooldown_capacity (cc) #
#
# Type: Integer (percentage)
# Default: 50
#
# Battery level or millivolts at which the cooldown cycle starts.
# Cooldown reduces battery stress induced by prolonged exposure to high temperature and high charging voltage.
# It does so through periodically pausing charging for a few seconds (cooldown_pause, more details below).
# Requires cooldown_current OR "cooldown_charge and cooldown_pause".


# cooldown_charge (cch) # cooldown_pause (cp) #
#
# Type: Integer (seconds)
# Defaults: null
#
# Those dictate the cooldown cycle intervals (seconds).
# When not set, the cycle is disabled.
# Suggested values are cch=50 and cp=10.
# If charging gets slower than desired, try cch=50 and cp=5.
# Note that cooldown_capacity and cooldown_temp can be disabled individually by assigning them values that would never be reached under normal circumstances.
# cooldown_current optionally works with ratios as well (cooldown_charge: regular current, cooldown_pause: cooldown_current).


# cooldown_current (cdc) #
#
# Type: Integer (milliamps)
# Default: Null
#
# Instead of pausing charging for cooldown_pause seconds, limit the max charging current (e.g., to 500 (mA) or even 50% (of the max current).
# cooldown_pause and cooldown_charge are optional.
# When the value is a percentage, temp_level is used as back-end, rather than the regular current control logic.


# cooldown_temp (ct) #
#
# Type: Integer (°C)
# Default: 35
#
# Temperature (°C) at which the cooldown cycle starts.
# Cooldown reduces the battery degradation rate by lowering the device's temperature.
# Requires cooldown_current OR "cooldown_charge and cooldown_pause".


# current_workaround (cw) #
#
# Type: Boolean
# Default: false
#
# If set to true, acc only uses current control files whose paths match "batt".
# This is necessary only if the current limit affects both input and charging current values.
# Enable if low current values don't work.


# force_off (fo) #
#
# Type: Boolean
# Default: false
#
# Enable this only as last resort, if the set charging switch is stubbornly reset by the system.
# Oftentimes, userspace thermal management daemons (e.g., mi_thermald) and/or driver bugs are behind charging control issues.


# idle_apps (ia) #
#
# Type: String
# Default: Null
#
# This is a list of comma or space-separated patterns matching Android package names.
# When a matched app is running in the foreground, acc daemon enables idle mode.
# e.g., acc -s ia=maps,pubg,codm,pokemon


# lang (l) #
#
# Type: String
# Default: en
#
# Display language, when null, English (en) is assumed.
# WARNING: Current translations are poor/outdated.


# max_charging_current (mcc) # max_charging_voltage (mcv) #
#
# Type: Integer (milliamps/millivolts)
# Defaults: Null
#
# Control files are automatically added by accd when the array has just one element (the milliamps/millivolts value).
# If the second element of the array (array[1]) starts with "-", accd recognizes it as an instruction to update the control files.
# This is useful for setting/changing current and voltage limits without a frontend (--set or app).
# Simply put, if the user has the following in their config, accd automatically adds/updates the control files:
#   maxChargingCurrent=(1000) # Control files will be added.
#   maxChargingVoltage=(4000 -battery/voltage_max bms/voltage_max) # Control files will be updated. The "-" is mandatory after changing the value (first element). Otherwise, the change has no effect.
#
# Notes: The maximum current that can be set via dedicated commands is 9999 mA. For voltage, the max is 4300 mV. One can override those by editing the config directly.


# max_temp (mt) # resume_temp (rt) #
#
# Type: Integer (°C)
# Defaults: mt=50, rt=45
#
# Those two work together and are NOT tied to the cooldown cycle.
# At max_temp, charging is paused.
# If charging is paused due to capacity >= pause_capacity, it resumes when capacity <= resume_capacity AND temp <= max_temp.
# If charging is paused due to temp >= max_temp, it resumes when capacity < pause_capacity AND temp <= resume_temp


# off_mid (om) #
#
# Type: Boolean
# Default: true
#
# Whether to turn off charging after rebooting the system or restarting accd, if capacity is within resume_capacity and pause_capacity.


# one-line scripts #
#
# Type: String
# Default: Null
#
# Every line that begins with ":" is interpreted as a shell script.
# This feature can be useful for many things, including setting up persistent config profiles (i.e., source a file that overrides the main config).
# All script lines are executed whenever the config is loaded/sourced.
# This happens regularly while the daemon is running, and at least once per command run.
#
# Note: Due to user data encryption, files used in one-line scripts must reside somewhere in /data/adb/, just like acc's own data files.
# Ignore if your data isn't encrypted.
#
# Tip: One can schedule tasks with the following construct:
# : sleep profile; at 22:00 acc -s pc=50 mcc=500 mcv=3900, acc -n Switched to night profile
#
# WARNING: All scripts must always return zero. Appending "|| :" ensures that.


# pause_capacity (pc) # resume_capacity (rc) #
#
# Type: Integer (percentage)
# Defaults: pc=75, rc=70
#
# Battery level or millivolts at which charging shall be paused/resumed.


# prioritize_batt_idle_mode (pbim) #
#
# Type: Boolean | String (pbim=no)
# Default: true
#
# Battery idle mode, also called "standby mode" or "charging bypass", is the ability of running off the charger, as if the battery were disconnected from the device.
# Not all devices support this, but there's also emulated idle mode (refer to the readme), which works on all devices.
#
# If enabled, charging switches that support battery idle mode take precedence.
# This is only relevant when the switch is automatically determined -- i.e., charging_switch is not set or it has no trailing " --".
# In other words, this variable is only used when acc is automatically testing charging switches.
# When set to "no", it has the opposite effect (prioritize non-idle mode).


# reboot_resume (rr) #
#
# Type: Boolean
# Default: false
#
# Reboot (when capacity capacity is at or below resume_capacity) to re-enable charging.
# This is only for devices whose switches can't re-enable charging.
# A warning Android notification is posted 60 seconds prior, for the user to block the action, if they so please.


# reset_batt_stats_on_pause (rbsp) # reset_batt_stats_on_plug (rbspl) # reset_batt_stats_on_unplug (rbsu) #
#
# Type: Boolean
# Default: false
#
# Reset battery stats after a given event.


# run_cmd_on_pause (rcp) #
#
# Type: String
# Default: Null
#
# Run commands* after pausing charging.
# * Usually a script ("sh some_file" or ". some_file")


# shutdown_capacity (sc) #
#
# Type: Integer (percentage)
# Default: 5
#
# When the battery is discharging, its level/millivolts is at or below shutdown_capacity, and the device has been running for 15 minutes or more, acc daemon turns the device off to reduce the discharge rate, and protect the battery from potential damage, induced by voltage below the operating range.
# A value less than 1 disables it.
# An Android warning notification is posted shortly before the shutdown, giving some time to abort the process.


# shutdown_temp (st) #
#
# Type: Integer (°C)
# Default: 55
#
# Shutdown the system if battery temperature >= this value.


# temp_level (tl) #
#
# Type: Integer (percentage)
# Default: 0
#
# This is an alternate current limiting feature.
# Some devices have adjustable "temperature levels" and/or charge_control_limit, siop_level parameters.
# At the highest level, charging current is blocked.
# The stock values are generally integers, ranging from 0 to 6, 7 or so. siop_level (Samsung) ranges from 0 to 100).
# For greater flexibility, this variable stores a percentage value, which is internally mapped to the system's scales.

#/DC#
```

---
## SETUP/USAGE


As the [default configuration](#default-configuration) (above) suggests, ACC is designed to run out of the box, with little to no customization/intervention.

The only command you have to remember is `acc`.
It's a wizard you'll either love or hate.

If you feel uncomfortable with the command line, skip this section and use a front-end app instead.

Alternatively, you can use a `text editor` to modify `/data/adb/vr25/acc-data/config.txt`.
The config file itself has configuration instructions.
Those are the same found in the [default configuration](#default-configuration) section, above.


### Terminal Commands
```
#TC#

Usage

  acc   Wizard

  accd   Start/restart accd

  accd.   Stop acc/daemon

  accd,   Print acc/daemon status (running or not)

  acc [pause_capacity/millivolts [resume_capacity/millivolts, default: pause_capacity/millivolts - 5%/50mV]]
    e.g.,
      acc 75 70
      acc 80 (resume_capacity defaults to 80% - 5)
      acc 3900 (same as acc 3900 3870, great idle mode alternative)

  acc [options] [args]   Refer to the list of options below

  acca [options] [args]   acc optimized for front-ends

  acc[d] -x [options] [args]   Sets log=/sdcard/Download/acc[d]-${device}.log; useful for debugging unwanted reboots

  A custom config path can be specified as first parameter (second if -x is used).
  If the file doesn't exist, the current config is cloned.
    e.g.,
      acc /data/acc-night-config.txt --set pause_capacity=45 resume_capacity=43
      acc /data/acc-night-config.txt --set --current 500
      accd /data/acc-night-config.txt --init

  Notes regarding accd:
    - The order of "--init|-i" does not matter.
    - The config path string shall not contain "--init|-i".


Options

  -b|--rollback [nv]   Restore previous installation; with "n" flag, the config is not restored; with "v" flag, nothing is done other than printing the version that would have been restored

  -c|--config [[editor] [editor_opts] | g for GUI]   Edit config (default editor: nano/vim/vi)
    e.g.,
      acc -c (edit w/ nano/vim/vi)
      acc -c less
      acc -c cat

  -c|--config a|d string|regex   Append (a) or delete (d) string/pattern to/from config
    e.g.,
      acc -c a : sleep profile, at 22:00 acc -s pc=50 mcc=500 mcv=3900, acc -n switched to sleep profile (append a schedule)
      acc -c d sleep (remove all lines matching "sleep")

  -c|--config h string   Print config help text associated with "string" (config variable)
    e.g., acc -c h rt (or resume_temp)

  -d|--disable [#%, #s, #m, #h or #mv (optional)]   Disable charging
    e.g.,
      acc -d 70% (do not recharge until capacity <= 70%)
      acc -d 1h (do not recharge until 1 hour has passed)
      acc -d 4000mv (do not recharge until battery voltage <= 4000mV)

  -D|--daemon   Print daemon status, (and if running) version and PID
    e.g., acc -D (alias: "accd,")

  -D|--daemon [start|stop|restart]   Manage daemon
    e.g.,
      acc -D start (alias: accd)
      acc -D restart (alias: accd)
      accd -D stop (alias: "accd.")

  -e|--enable [#%, #s, #m, #h or #mv (optional)]   Enable charging
    e.g.,
      acc -e 75% (recharge to 75%)
      acc -e 30m (recharge for 30 minutes)
      acc -e 4000mv (recharge to 4000mV)

  -f|--force|--full [capacity] [additional opts/args]   Charge once to a given capacity (default: 100%), without restrictions
    e.g.,
      acc -f 95 (charge to 95%)
      acc -f (charge to 100%)
      acc -f -s mcc=500 (charge to 100% with a 500 mA limit)

  -F|--flash ["zip_file"]   Flash any zip files whose update-binary is a shell script
    e.g.,
      acc -F (lauches a zip flashing wizard)
      acc -F "file1" "file2" "fileN" ... (install multiple zips)
      acc -F "/sdcard/Download/Magisk-v20.0(20000).zip"

  -h|--help [[editor] [editor_opts] | g for GUI]   Print this help text, plus the config

  -H|--health <mAh>   Print estimated battery health

  -i|--info [case insensitive egrep regex (default: ".")]   Show battery info
    e.g.,
      acc -i
      acc -i volt
      acc -i volt,curr (multiple patterns)

  -l|--log [-a|--acc] [[editor] [editor_opts] | g for GUI]   Print/edit accd log (default) or acc log (-a|--acc)
    e.g.,
      acc -l (same as acc -l less)
      acc -l rm
      acc -l -a cat
      acc -l grep ': ' (show explicit errors only)

  -la   Same as -l -a

  -l|--log -e|--export   Export all logs to /sdcard/Download/acc-logs-$deviceName.tgz
    e.g., acc -l -e

  -le   Same as -l -e

  -n|--notif [["STRING" (default: ":)")] [USER ID (default: 2000 (shell))]]   Post Android notification; may not work on all systems
    e.g., acc -n "Hello, World!"

  -p|--parse [<base file> <file to parse>] | <file to parse>]   Helps find potential charging switches quickly, for any device
    e.g.,
      acc -p   Parse /logs/power_supply-\*.log and print potential charging switches not present in /ch-switches
      acc -p /sdcard/power_supply-harpia.log   Parse the given file and print potential charging switches that are not already in /ch-switches
      acc -p /sdcard/charging-switches.txt /sdcard/power_supply-harpia.log   Parse /sdcard/power_supply-harpia.log and print potential charging switches absent from /sdcard/charging-switches.txt

  -r|--readme [g for GUI]]   Open the manual

  -R|--resetbs   Reset battery stats
    e.g., acc -R

  -s|--set   Print current config
    e.g., acc -s

  -s|--set file   Get config from file (in "acc -s" format); the file's path must be absolute; partial config is supported
    e.g., acc -s /data/config

  -s|--set prop1=value "prop2=value1 value2"   Set [multiple] properties
    e.g.,
      acc -s charging_switch=
      acc -s pause_capacity=60 resume_capacity=55 (shortcuts: acc -s pc=60 rc=55, acc 60 55)
      acc -s "charging_switch=battery/charging_enabled 1 0" resume_capacity=55 pause_capacity=60
    Note: all properties have short aliases for faster typing; run "acc -c cat" to see them

  -s|--set c|--current [milliamps|-]   Set/print/restore_default max charging current (range: 0-9999 mA)
    e.g.,
      acc -s c (print current limit)
      acc -s c 500 (set)
      acc -s c - (restore default)

  -sc [milliamps|-]   Same as above

  -s|--set l|--lang   Change language
    e.g., acc -s l

  -sl   Same as above

  -s|--set d|--print-default [egrep regex (default: ".")]   Print default config without blank lines
    e.g.,
      acc -s d (print entire defaul config)
      acc -s d cap (print only entries matching "cap")
      acc -s cap,temp (multiple patterns)

  -sd [egrep regex (default: ".")]   Same as above

  -s|--set p|--print [egrep regex (default: ".")]   Print current config without blank lines (refer to previous examples)

  -sp [egrep regex (default: ".")]   Same as above

  -s|--set r|--reset [a]   Restore default config ("a" is for "all": config and control file blacklists, essentially a hard reset)
    e.g.,
      acc -s r

  -sr [a]   Same as above


  -s|--set s|charging_switch   Enforce a specific charging switch
    e.g., acc -s s

  -ss    Same as above

  -s|--set s:|chargingSwitch:   List known charging switches
    e.g., acc -s s:

  -ss:   Same as above

  -s|--set s::|chargingSwitch::   List working charging switches and mcc, mcv & tl support status
    e.g., acc -s s::

  -ss::   Same as above

  -s|--set v|--voltage [millivolts|-] [--exit]   Set/print/restore_default max charging voltage (range: 3700-4300 mV)
    e.g.,
      acc -s v (print)
      acc -s v 3900 (set)
      acc -s v - (restore default)
      acc -s v 3900 --exit (stop the daemon after applying settings)

  -sv [millivolts|-] [--exit]   Same as above

  -t|--test [ctrl_file1 on off [ctrl_file2 on off]]   Test custom charging switches
    e.g.,
      acc -t battery/charging_enabled 1 0
      acc -t /proc/mtk_battery_cmd/current_cmd 0::0 0::1 /proc/mtk_battery_cmd/en_power_path 1 0 ("::" is a placeholder for " " - MTK only)

  -t|--test [file]   Test charging switches from a file (default: /ch-switches)
    e.g.,
      acc -t (test known switches)
      acc -t /sdcard/experimental_switches.txt (test custom/foreign switches)

  -t|--test [p|parse]   Parse potential charging switches from the power supply log (as "acc -p"), test them all, and add the working ones to the list of known switches
    Implies -x, as acc -x -t p
    e.g., acc -t p

  -T|--logtail   Monitor accd log (tail -F)
    e.g., acc -T

  -u|--upgrade [-c|--changelog] [-f|--force] [-n|--non-interactive]   Online upgrade/downgrade
    e.g.,
      acc -u dev (upgrade to the latest dev version)
      acc -u (latest version from the current branch)
      acc -u master^1 -f (previous stable release)
      acc -u -f dev^2 (two dev versions below the latest dev)
      acc -u v2020.4.8-beta --force (force upgrade/downgrade to v2020.4.8-beta)
      acc -u -c -n (if update is available, prints version code (integer) and changelog)
      acc -u -c (same as above, but with install prompt)

  -U|--uninstall   Completely remove acc and AccA
    e.g., acc -U

  -v|--version   Print acc version and version code
    e.g., acc -v

  -w[#]|--watch[#] [pattern1,pattern2,...]   Monitor battery uevent
    e.g.,
      acc -w (update info every second)
      acc -w0.5 (update info every half a second)
      acc -w0 (no extra delay)
      acc -w curr,volt


Exit Codes

  0. True/success
  1. False or general failure
  2. Incorrect command syntax
  3. Missing busybox binary
  4. Not running as root
  5. Update available ("--upgrade")
  6. No update available ("--upgrade")
  7. Failed to disable charging
  8. Daemon already running ("--daemon start")
  9. Daemon not running ("--daemon" and "--daemon stop")
  10. All charging switches fail (--test)
  11. Current (mA) out of 0-9999 range
  12. Initialization failed
  13. Failed to lock /acc.lock
  14. ACC won't initialize, because the Magisk module disable flag is set
  15. Idle mode is supported (--test)
  16. Failed to enable charging (--test)

  Logs are exported automatically ("--log --export") on exit codes 1, 2 and 7.


Tips

  Commands can be chained for extended functionality.
    e.g., charge for 30 minutes, pause charging for 6 hours, charge to 85% and restart the daemon
    acc -e 30m && acc -d 6h && acc -e 85 && accd
  One can take advantage of one-line scripts and the built-in "at" function to schedule profiles (refer back to -c|--config).

  Sample profile
    acc -s pc=60 mcc=500 mcv=3900
      This keeps battery capacity between 55-60%, limits charging current to 500 mA and voltage to 3900 millivolts.
      It's great for nighttime and "forever-plugged".

  Refer to acc -r (or --readme) for the full documentation (recommended)

#/TC#
```

---
## PLUGINS

Those are scripts that override functions and some global variables.
They should be placed in `/data/adb/vr25/acc-data/plugins/`.
Files are sorted and sourced.
Filenames shall not contain spaces.
Hidden files and those without the `.sh` extension are ignored.

There are also _volatile_ plugins (gone on reboot, useful for debugging): `/dev/.vr25/acc/plugins/`.
Those override the permanent.

A daemon restart is required to load new/modified plugins.

An alternative to plugins are one-line scripts. Refer to the [default configuration](#default-configuration) section above.


---
## NOTES/TIPS FOR FRONT-END DEVELOPERS


### Basics

ACC does not require KernelSU/Magisk.
Any root solution works, as long as busybox is installed.

Use `/dev/acca` instead of regular `acc`.
It's optimized for front-ends, guaranteed to be readily available after installation/upgrades and significantly faster than its `acc` counterpart.
Additionally, `/dev/acca --set prop1=bla prop2="bla bla" ...` runs asynchronously (non-blocking mode) - meaning, multiple instances of it work in parallel.

It may be best to use long options over short equivalents - e.g., `--set charging_switch=` instead of `-s s=`.
This makes code more readable (less cryptic).

Include provided descriptions of ACC features/settings in your front-end.
Provide additional information (trusted) where appropriate.
Explain settings/concepts as clearly and as concisely as possible.

Take advantage of acc exit codes.
Refer back to `SETUP/USAGE > [Terminal Commands](#terminal-commands) > Exit Codes`.


### Installing/Upgrading ACC

This should be trivial.
The simplest way is flashing acc from KernelSU/Magisk module manager.

Alternatively, `install.sh`, `install-online.sh` or `install-tarball.sh` can be used.
For details, refer back to [install from local source or GitHub](#install-from-local-source-or-github).

Developers can also use the _updateJSON_ API.
The front-end downloads and parses [this JSON file](https://raw.githubusercontent.com/VR-25/acc/master/module.json).
The format is as follows:

```
{
    "busybox": "https://github.com/Magisk-Modules-Repo/busybox-ndk",
    "changelog": "https://raw.githubusercontent.com/VR-25/acc/master/changelog.md",
    "curl": "https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/curl",
    "tgz": "https://github.com/VR-25/acc/releases/download/$version/acc_${version}_${versionCode}.tgz",
    "tgzInstaller": "https://github.com/VR-25/acc/releases/download/$version/install-tarball.sh",
    "version": "STRING",
    "versionCode": INT,
    "zipUrl": "https://github.com/VR-25/acc/releases/download/$version/acc_${version}_${versionCode}.zip"
}
```

### Uninstalling ACC

Either run `/data/adb/vr25/acc/uninstall.sh` (no reboot required) or uninstall from KernelSU/Magisk module manager and reboot.


### Initializing ACC

On `boot_completed` receiver and `main activity`, run:

`test -f /dev/acca || /data/adb/vr25/acc/service.sh`

Explanation:

ACC's working environment must be initialized - i.e., by updating the stock charging config (for restoring without a reboot) and pre-processing data for greater efficiency.
This is done exactly once after boot.
If it were done only after installation/upgrade, one would have to reinstall/upgrade acc after every kernel update.
That's because kernel updates often change the default power supply drivers' settings.

Since acc's core executables are dynamic ([expected to] change regularly), those are linked to `/dev/` to preserve the APIs.
The links must be recreated once after boot (since `/dev/` is volatile).

`accd` is a symbolic link to `service.sh`.
If service.sh is executed every time the `main activity` is launched, accd will be repeatedly restarted for no reason.
Thus, we run `test -f /dev/acca || /data/adb/vr25/acc/service.sh`, as opposed to just `/data/adb/vr25/acc/service.sh`


Notes

- This "manual" initialization is only _strictly_ required for non KernelSU/Magisk installs -- and only once per boot session. In other words, KernelSU and Magisk already run `service.sh` shortly after boot.
- ACC's installer always initializes it.


### Managing ACC

As already stated, front-ends shall use the executable `/dev/acca`.
Refer to the [default configuration](#default-configuration) and [terminal commands](#terminal-commands) sections above.

The default config reference has a section entitled "aliases".
Use ONLY those with `/dev/acca --set`!
i.e., `/dev/acca --set chargingSwitch=...` is not supported!
Use either `s` or `charging_switch`.
`chargingSwitch` and all the other "camelcase" style variables are for internal use only (i.e., private APIs).

Do not parse the config file directly.
Use `--set --print ['regex']` and `--set --print-default ['regex']`.
Refer back to [terminal commands](#terminal-commands) for details.


---
## TROUBLESHOOTING


### acc -t Results Are Inconsistent

Refer to "default config > batt_status_workaround".


### Charging Switch

By default, ACC uses whichever [charging switch](https://github.com/VR-25/acc/blob/dev/install/ctrl-files.sh) works ("automatic" mode).
However, things don't always go well.

- Some switches are unreliable under certain conditions (e.g., while the screen is off).

- Others hold a [wakelock](https://duckduckgo.com/lite/?q=wakelock).
This causes fast battery drain when charging is paused and the device remains plugged.

- Charging keeps being re-enabled by the system, seconds after acc daemon disables it.
As a result, the battery eventually charges to 100% capacity, regardless of pause_capacity.
Refer to config > force_off.

- High CPU load (drains battery) was also reported.

- In the worst case scenario, the battery status is reported as `discharging`, while it's actually `charging`.

In such situations, one has to enforce a switch that works as expected.
Here's how to do it:

1. Run `acc -t` to see which switches work.
2. Run `acc -ss` to enforce a working switch.
3. Test the reliability of the set switch. If it doesn't work properly, try another.

Since not everyone is tech savvy, ACC daemon automatically applies settings for certain devices for greater compatibility.
These are in `acc/oem-custom.sh`.


### Custom Max Charging Voltage And Current Limits

Unfortunately, not all kernels support these features.
While custom current limits are supported by most (at least to some degree), voltage tweaking support is _exceptionally_ rare.

That said, the existence of potential voltage/current control file doesn't necessarily mean these are writable* or the features, supported.

\* Root is not enough.
Kernel level permissions forbid write access to certain interfaces.

Sometimes, restoring the default current may not work without a system reboot.
A workaround is setting the default max current value or any arbitrary high number (e.g., 9000 mA).
Don't worry about frying things.
The device will only draw the max it can take.

**WARNING**: limiting voltage causes battery state of charge (SoC) deviation on some devices.
The  battery management system self-calibrates constantly, though.
Thus, as soon as the default voltage limit is restored, it'll start "fixing" itself.

Limiting current, on the other hand, has been found to be universally safe.
Some devices do not support just any current value, though.
That's not to say out-of-range values cause issues.
These are simply ignored.

If low current values don't work, try setting `current_workaround=true`.
Refer to the [default configuration](#default-configuration) section for details.

One can override the default lists of max charging current/voltage control files by copying `acc/ctrl-files.sh` to `/data/adb/vr25/acc-data/plugins/` and modifying it accordingly.
Note that default limits must be restored prior to that to avoid the need for a system reboot.
Reminder: A daemon restart is required to load new/modified plugins.


### Diagnostics/Logs

Volatile logs (gone on reboot) are stored in `/dev/.vr25/acc/` (`.log` files only).
Persistent logs reside in `/data/adb/vr25/acc-data/logs/`.

`acc -le` exports all acc logs, plus Magisk's and extras to `/data/adb/acc-data/logs/acc-$device_codename.tgz`.
The logs do not contain any personal information and are never automatically sent to the developer.
Automatic exporting (local) happens under specific conditions (refer back to `SETUP/USAGE > Terminal Commands > Exit Codes`).


### Install, Upgrade, Stop and Restart Processes Seem to Take Too Long

The daemon stop process implies complete reversal of changes made to the charging management system.
Sometimes, **this requires the charger to be plugged**.
That's because some devices have kernel bugs and/or bad charging driver implementations.
That said, accd is always stopped _gracefully_ to ensure the restoration takes place.
One who knows what they're doing, can force-stop accd by running `pkill -9 -f accd`.


### Kernel Panic and Spontaneous Reboots

Control files that trigger these are automatically backlisted (commented out in `/data/adb/acc-data/logs/write.log`).


### Restore Default Config

This can potentially save a lot of time and grief.

`acc --set --reset`, `acc -sr` or `rm /data/adb/vr25/acc-data/config.txt` (failsafe)


### Samsung, Charging _Always_ Stops at 70% Capacity

This is a device-specific issue (by design?).
It's caused by the _store_mode_ charging control file.
Switch to _batt_slate_mode_ to prevent it.
Refer back to [charging switch](#charging-switch) above for details on that.


### Slow Charging

At least one of the following may be the cause:

- Charging current and/or voltage limits
- Cooldown cycle (non optimal charge/pause ratio, try 50/10 or 50/5)
- Troublesome charging switch (refer back to `TROUBLESHOOTING > Charging Switch`)
- Weak adapter and/or power cord


### Unable to Charge

Refer back to the [warnings](#warnings) section above.


### Unexpected Reboots

Wrong/troublesome charging control files may trigger unwanted reboots.
ACC blacklist [some of] these automatically (registered in `/data/adb/vr25/acc-data/logs/write.log`, with a leading hashtag).
Sometimes, there may be false positives in there - i.e., due to unexpected reboots caused by something else. Thus, if a control file that used to work, suddenly does not, see if it was blacklisted (`acc -t` also reveals blacklisted switches).
Send `write.log` to the developer once the reboots have stopped.


### WARP, VOOC and Other Fast Charging Tech

Charging switches may not work reliably with the original power adapter.
This has nothing to do with acc.
It's bad design by the OEMs themselves.
If you face issues, either try a different charging switch or a regular power brick (a.k.a., slow charger).
You may also want to try stopping charging by limiting current/voltage.


### Why Did accd Stop?

Run `acc -l tail` to find out.
This will print the last 10 lines of the daemon log file.

A relatively common exit code is `7` - meaning all charging switches failed to disable charging.
It usually happens due to kernel issues (refer to the previous subsection - [charging switch](#charging-switch)).
The daemon only stops due to this if acc is set to automatically determine the switches to use (default behavior).
Manually setting a working switch with `acc -ss` or `acc -s s="SWITCHES GO HERE --"` disables auto mode and prevents accd from stopping if the set the charging switches fail.


---
## POWER SUPPLY LOGS (HELP NEEDED)

Please run `acc -le` and upload `/data/adb/vr25/acc-data/logs/power_supply-*.log` to [my dropbox](https://www.dropbox.com/request/WYVDyCc0GkKQ8U5mLNlH) (no account/sign-up required).
This file contains invaluable power supply information, such as battery details and available charging control files.
A public database is being built for mutual benefit.
Your cooperation is greatly appreciated.

Privacy Notes

- Name: random/fake
- Email: random/fake

See current submissions [here](https://www.dropbox.com/sh/rolzxvqxtdkfvfa/AABceZM3BBUHUykBqOW-0DYIa?dl=0).


---
## LOCALIZATION


Currently Supported Languages and Translation Levels (default, full, good, fair, minimal)

- Chinese, simplified (zh-rCN): minimal
- Chinese, traditional (zh-rTW): minimal
- English (en): default
- French (fr): good
- German (de_DE): fair
- Indonesia (id): minimal
- Portuguese, Portugal (pt-PT): minimal
- Turkish (tr): good


Translation Notes

1. Start with copies of [acc/strings.sh](https://github.com/VR-25/acc/blob/dev/install/strings.sh) and, optionally, [README.md](https://github.com/VR-25/acc/blob/dev/README.md).

2. Modify the header of strings.sh to reflect the translation (e.g., # Español (es)).

3. Anyone is free and encouraged to open translation [pull requests](https://duckduckgo.com/lite/?q=pull+request).
Alternatively, a _compressed_ archive of translated `strings.sh` and `README.md` files can be sent to the developer via Telegram (link below).

4. Use `acc -sl` (--set --lang): language switching wizard or `acc -s l=<lang_string>` to set a language.


---
## TIPS


### _Always_ Limit the Charging Current If Your Battery is Old and/or Tends to Discharge Too Fast

This extends the battery's lifespan and may even _reduce_ its discharge rate.

750-1000mA is a good range for regular use.

500mA is a comfortable minimum - and also very compatible.

If your device does not support custom current limits, use a dedicated ("slow") power adapter.


### Generic

Force fast charge: `appy_on_boot="/sys/kernel/fast_charge/force_fast_charge::1::0 usb/boost_current::1::0 charger/boost_current::1::0"`


### Google Pixel Devices

Force fast wireless charging with third party wireless chargers that are supposed to charge the battery faster: `apply_on_plug=wireless/voltage_max::9000000`.

This may not work on all Pixel devices.
There are no negative consequences when it doesn't.


### Export/import Config

Export: `acc -s > /sdcard/Download/config.txt`

Import: `acc -s /sdcard/Download/config.txt`

Partial import is supported - meaning, users can share just a portion of the config (e.g., `acc -sp curr,volt > file`); whoever imports this, gets just those changes.


### Override Battery mAh Capacity

An "extended" battery won't charge fully if the kernel still has the stock `charge_full_design` value.
Some devices allow that to be modified. If that's the case for you, use `apply_on_boot` to set the desired value(s) in `/sys/class/power_supply/*/charge_full_design`.


### Override Broken Temperature Sensor

If your battery's thermistor always reports a negative value, and charging is very slow or even off, see if the following helps (paste and run):

`acc -c d temp_cool; acc -c a ':; for i in */temp_cool */temp_cold; do [ -f $i ] || continue; chown 0:0 $i && chmod 0644 $i && echo "-999" > $i && chown 0444 $i || :; done'`


---
## FREQUENTLY ASKED QUESTIONS (FAQ)


> How do I report issues?

Open issues on GitHub or contact the developer on Telegram (preferred) or XDA (links below).
Always provide as much information as possible.
Attach `/sdcard/Download/acc-logs-*.tgz` - generated by `acc -le` _right after_ the problem occurs.
Refer back to `TROUBLESHOOTING > Diagnostics/Logs` for additional details.


> Why won't you support my device? I've been waiting for ages!

Firstly, have some extra patience!
Secondly, several systems don't have intuitive charging control files; I have to dig deeper - and oftentimes, improvise; this takes time and effort.
Lastly, some systems don't support custom charging control at all;  in such cases, you have to keep trying different kernels and uploading the respective power supply logs.
Refer back to `POWER SUPPLY LOGS (HELP NEEDED)`.


> Why, when and how should I calibrate the battery manager?

With modern battery management systems, that's generally unnecessary.

However, if your battery is underperforming, you may want to try the procedure described at https://batteryuniversity.com/article/bu-603-how-to-calibrate-a-smart-battery .


> I set voltage to 4080 mV and that corresponds to just about 75% charge.
But is it typically safer to let charging keep running, or to have the circuits turn on and shut off between defined percentage levels repeatedly?

It's not much about which method is safer.
It's specifically about electron stability: optimizing the pressure (voltage) and current flow.

As long as you don't set a voltage limit higher than 4200 mV, and don't leave the device plugged in for extended periods of time, you're good with that limitation alone.
Otherwise, the other option is actually more beneficial - since it mitigates high pressure (voltage) exposure/time to a greater extent.
If you use both, simultaneously - you get the best of both worlds.
On top of that, if you enable the cooldown cycle, it'll give you even more benefits.

Ever wondered why lithium ion batteries aren't sold fully charged? They're usually ~40-60% charged. Why is that?
Keeping a battery fully drained, almost fully drained or 70%+ charged for a long times, leads to significant (permanent) capacity loss

Putting it all together in practice...

Night/heavy-duty/forever-plugged profile: keep capacity within 40-60% (e.g., acc 50 45) and/or voltage around ~3900 mV

Day/regular profile: max capacity: 75-80% and/or voltage no higher than 4100 mV

Travel profile: capacity up to 95% and/or voltage no higher than 4200 mV

\* https://batteryuniversity.com/article/bu-808-how-to-prolong-lithium-based-batteries/


> I don't really understand what the "-f|--force|--full [capacity]" is meant for.

Consider the following situation:

You're almost late for an important event.
You recall that I stole your power bank and sold it on Ebay.
You need your device and a good battery backup.
The event will take the whole day and you won't have access to an external power supply in the middle of nowhere.
You need your battery charged fast and as much as possible.
However, you don't want to modify ACC config nor manually stop/restart the daemon.


> Do I have to install/upgrade both ACC and AccA?

To really get out of this dilemma, you have to understand what ACC and AccA essentially are.

ACC is a Android program that controls charging.
It can be installed as an app (e.g., AccA) module, Magisk module or standalone software. Its installer determines the installation path/variant. The user is given the power to override that.

A plain text file holds the program's configuration. It can be edited with any root text editor.
ACC has a command line interface (CLI) - which in essence is a set of Application Programing Interfaces (APIs). The main purpose of a CLI/API is making difficult tasks ordinary.

AccA is a graphical user interface (GUI) for the ACC command line. The main purpose of a GUI is making ordinary tasks simpler.
AccA ships with a version of ACC that is automatically installed when the app is first launched.

That said, it should be pretty obvious that ACC is like a fully autonomous car that also happens to have a steering wheel and other controls for a regular driver to hit a tree.
Think of AccA as a robotic driver that often prefers hitting people over trees.
Due to extenuating circumstances, that robot may not be upgraded as frequently as the car.
Upgrading the car regularly makes the driver happier - even though I doubt it has any emotion to speak of.
The back-end can be upgraded by flashing the latest ACC zip.
However, unless you have a good reason to do so, don't fix what's not broken.


> Does acc work also when Android is off?

No, but this possibility is being explored.
Currently, it does work in recovery mode, though.


> I have this wakelock as soon as charging is disabled. How do I deal with it?

The best solution is enforcing a charging switch that doesn't trigger a wakelock.
Refer back to `TROUBLESHOOTING > Charging Switch`.
A common workaround is having `resume_capacity = pause_capacity - 1`. e.g., resume_capacity=74, pause_capacity=75.


> What's idle mode, and how do I set it up?

It's the ability of running off the charger.
The battery behaves as if it were physically disconnected from the device.
The primary indicator of idle mode is charging current around 0 mA. One can customize idleThreshold (absolute value).

Idle mode is great for extended device use (e.g., GPS navigation, gaming, server). Use it when the charger must be plugged for a long time (or permanently).

IMPORTANT: lithium batteries have the longest lifespan when kept about 40-60% charged (about 3.7-3.9ish Volts). That said, try not to use idle mode above 60% too often.

Not all devices support the "native" idle mode. Hence, variants of "emulated" idle mode are available:

1. Limit the charging voltage (requires kernel support) to a value that gets you close to the desired battery level. To avoid false positives, determine the value only after the device has been unplugged for a minute or so.
2. Pause/resume charging based on voltage thresholds (e.g., acc 3900 keeps voltage within 3850 and 3900 millivolts).
3. Set resume_capacity to (pause_capacity - 1), e.g., acc 50 49.

Notes

- In idle mode, the battery does discharge, although very slowly. The same happens to a battery that is sitting on a shelf.
- In emulated idle mode, the battery tends to hold its charge, since it works as a "passthrough" device. Imagine pouring water into a glass that is already full.


> How do I enable "smart charging"?

Configure day and night profiles:

`acc -c a ": day profile; at 6:00 \"acc -s pc=75 mcc= mcv=4100; acc -n 'Switched to day profile'\""; acc -c a ": night profile; at 22:00 \"acc -s pc=50 mcc=500 mcv=3900; acc -n 'Switched to night profile'\""`


---
## LINKS

- [Donate - Zelle: iprj25 @ gmail . com](https://enroll.zellepay.com/qr-codes?data=eyJuYW1lIjoiSVZBTkRSTyIsInRva2VuIjoiaXByajI1QGdtYWlsLmNvbSIsImFjdGlvbiI6InBheW1lbnQifQ==)
- [Donate - Airtm, username: ivandro863auzqg](https://app.airtm.com/send-or-request/send)
- [Donate - Credit/Debit Card](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=iprj25@gmail.com&lc=US&item_name=VR25+is+creating+free+and+open+source+software.+Donate+to+suppport+their+work.&no_note=0&cn=&currency_code=USD&bn=PP-DonationsBF:btn_donateCC_LG.gif:NonHosted)
- [Donate - Liberapay](https://liberapay.com/vr25)
- [Donate - Patreon](https://patreon.com/vr25)
- [Donate - PayPal Me](https://paypal.me/vr25xda)

- [Frontend - ACC App](https://github.com/MatteCarra/AccA/releases)
- [Frontend - ACC Settings](https://github.com/CrazyBoyFeng/AccSettings)

- [Must Read - How to Prolong Lithium Ion Batteries Lifespan](https://batteryuniversity.com/article/bu-808-how-to-prolong-lithium-based-batteries)

- [Telegram Channel](https://t.me/vr25_xda)
- [Telegram Group](https://t.me/acc_group)
- [Telegram Profile](https://t.me/vr25xda)

- [Upstream Repository](https://github.com/VR-25/acc)

- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-magic-charging-switch-cs-v2017-9-t3668427)


## Download Link 
[Download Link](https://github.com/VR-25/acc/releases/latest)


