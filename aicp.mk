# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from z2 device
$(call inherit-product, device/zuk/z2/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

PRODUCT_NAME := aicp_z2
PRODUCT_DEVICE := z2
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK

PRODUCT_GMS_CLIENTID_BASE := android-zuk

TARGET_VENDOR_PRODUCT_NAME := Z2
TARGET_VENDOR_DEVICE_NAME := Z2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Z2_plus PRODUCT_NAME=Z2

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := zuk

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
        DEVICE_MAINTAINERS="lindwurm (Unofficial)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
