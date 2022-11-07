#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a505f device
$(call inherit-product, device/samsung/a505f/device.mk)

PRODUCT_DEVICE := a505f
PRODUCT_NAME := omni_a505f
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a50dd-user 11 RP1A.200720.012 A505FDDS9CUK1 release-keys"

BUILD_FINGERPRINT := samsung/a50dd/a50:11/RP1A.200720.012/A505FDDS9CUK1:user/release-keys
