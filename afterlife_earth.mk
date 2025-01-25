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

# Inherit some common AfterlifeOS stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

AFTERLIFE_MAINTAINER := Xero
TARGET_BOOT_ANIMATION_RES := 720
TARGET_USES_AOSP_RECOVERY := true
TARGET_INCLUDE_CALENDER := true
TARGET_INCLUDE_GALLERY := true
TARGET_INCLUDE_PHOTOS := false

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# CoreGapps
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true

# Pixel Charging
USE_PIXEL_CHARGING := true

PRODUCT_NAME := afterlife_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="earth-user 14 UP1A.230105.007 V816.0.2.0.UCVMIXM release-keys"

BUILD_FINGERPRINT := Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.2.0.UCVMIXM:user/release-keys
