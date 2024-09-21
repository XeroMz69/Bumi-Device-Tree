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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="earth-user 14 UP1A.230105.007 V816.0.2.0.UCVMIXM release-keys" \
    RISING_CHIPSET="MT6768" \
    RISING_MAINTAINER="Xero"

BUILD_FINGERPRINT := Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.2.0.UCVMIXM:user/release-keys

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Rising OS
RISING_PACKAGE_TYPE := VANILLA_AOSP
TARGET_ENABLE_BLUR := false
PRODUCT_NO_CAMERA := true
WITH_GMS := false
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_BOOT_ANIMATION_RES := 720
