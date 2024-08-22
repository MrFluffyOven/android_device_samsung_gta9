# Android device tree for samsung SM-X115 (gta9)

# How-to compile it:

## twrp 12.1 Manifest
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
## Sync
    repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
## Clone MrFluffyOven twrp tree
    git clone https://github.com/MrFluffyOven/android_device_samsung_gta9.git -b staging-2 device/samsung/gta9
## build:
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta9-eng; mka recoveryimage
## Multidisabler
    Boot twrp, Wipe data, Reboot Recovery, go to twrp terminal, type "multidisabler" hit enter/return , Wipe data again, Encryption should be Disabled

