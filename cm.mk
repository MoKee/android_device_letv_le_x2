# Copyright (C) 2016 The Mokee Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/letv/le_x2/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_le_x2
PRODUCT_DEVICE := le_x2
PRODUCT_MANUFACTURER := LeMobile
PRODUCT_BRAND := LeEco

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR_PRODUCT_NAME := LeMax2_CN
TARGET_VENDOR_DEVICE_NAME := le_x2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_x2 PRODUCT_NAME=LeMax2_CN

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LeEco/LeMax2_CN/le_x2:6.0.1/FEXCNFN5801507014S/letv07012213:user/release-keys \
    PRIVATE_BUILD_DESC="le_x2-user 6.0.1 FEXCNFN5801507014S eng.letv.20160701.221015 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := letv
