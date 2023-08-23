#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from CH6i device
$(call inherit-product, device/tecno/CH6i/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
PRODUCT_DEVICE := CH6i
PRODUCT_NAME := twrp_CH6i
PRODUCT_BRAND := tecno
PRODUCT_MODEL := tecno Cammon 19 neo
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch6i_h6921-user 12 SP1A.210812.016 102580 release-keys"

BUILD_FINGERPRINT := TECNO/CH6i-GL/TECNO-CH6i:12/SP1A.210812.016/220922V1236:user/release-keys
