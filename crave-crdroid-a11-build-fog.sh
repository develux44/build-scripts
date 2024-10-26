#!/bin/bash
rm -rf .repo/local_manifests
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs --depth=1
/opt/crave/resync.sh
git clone --depth=1 https://github.com/dblenk-project/kernel_xiaomi_fog_header.git kernel/xiaomi/fog
git clone --depth=1 https://github.com/develux44/device_xiaomi_fog-11.git device/xiaomi/fog
git clone --depth=1 https://github.com/develux44/vendor_xiaomi_fog-11.git vendor/xiaomi/fog
git clone --depth=1 -b 11.0 https://github.com/crdroidandroid/android_hardware_xiaomi.git hardware/xiaomi
. build/envsetup.sh
brunch fog
