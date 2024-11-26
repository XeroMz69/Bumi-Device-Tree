#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/earth/device.mk)

# Inherit some common Miku-UI stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Boot Annimation Resolution
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_NAME := miku_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

BUILD_MAPS := false
BUILD_GMAIL := false
BUILD_GOOGLE := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := earth

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="earth-user 14 UP1A.230105.007 V816.0.2.0.UCVMIXM release-keys" \
    BuildFingerprint=Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.2.0.UCVMIXM:user/release-keys \
    DeviceName=earth \
    DeviceProduct=earth \
    SystemDevice=earth \
    SystemName=earth

# Maintainer
MIKU_MASTER := Xero

# GAPPS
MIKU_GAPPS := true
