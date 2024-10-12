#!/bin/bash
rm -rf .repo/local_manifests
repo init -u https://github.com/AOSPA/manifest -b uvite --depth=1
/opt/crave/resync.sh
rm -rf vendor/aospa/products
git clone https://github.com/develux44/vendor_aospa-addfog.git vendor/aospa/products
git clone https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase.git -b another-reset kernel/xiaomi/fog --depth=1
./rom-build.sh fog
