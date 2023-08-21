#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-CH6i device
$(call inherit-product, device/tecno/TECNO-CH6i/device.mk)

PRODUCT_DEVICE := TECNO-CH6i
PRODUCT_NAME := omni_TECNO-CH6i
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH6i
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch6i_h6921-user 12 SP1A.210812.016 102580 release-keys"

BUILD_FINGERPRINT := TECNO/CH6i-GL/TECNO-CH6i:12/SP1A.210812.016/220922V1236:user/release-keys
