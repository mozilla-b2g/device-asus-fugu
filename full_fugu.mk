#
# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, device/asus/fugu/device.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

PRODUCT_NAME := full_fugu
PRODUCT_DEVICE := fugu
PRODUCT_BRAND := Android
PRODUCT_MODEL := fugu
PRODUCT_MANUFACTURER := ASUS

# for Gecko

TARGET_DEVICE_BLOBS := vendor/intel/fugu/device-partial.mk \
                       vendor/broadcom/fugu/device-partial.mk \
                       vendor/google/fugu/device-partial.mk \
                       vendor/widevine/fugu/device-partial.mk \
                       vendor/asus/fugu/device-partial.mk

# Set Gecko toolchain
GECKO_TOOLS_PREFIX = prebuilts/gcc/$(HOST_PREBUILT_TAG)/x86/x86_64-linux-android-4.9/bin/x86_64-linux-android-

# Add GAIA flag to support TV distribution
GAIA_DEVICE_TYPE := tv


