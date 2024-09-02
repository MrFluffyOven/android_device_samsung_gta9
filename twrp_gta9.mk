#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta9 device
$(call inherit-product, device/samsung/gta9/device.mk)

PRODUCT_DEVICE := gta9
PRODUCT_NAME := twrp_gta9
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X115
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta9xx-user 12 SP1A.210812.016 X115XXU2BXE2 release-keys"

BUILD_FINGERPRINT := samsung/gta9xx/gta9:12/SP1A.210812.016/X115XXU2BXE2:user/release-keys
