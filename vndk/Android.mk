include $(CLEAR_VARS)
LOCAL_MODULE := libutils-v32
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_arm := prebuilts/vndk/v32/arm64/arch-arm-armv8-a/shared/vndk-sp/libutils.so
LOCAL_SRC_FILES_arm64 := prebuilts/vndk/v32/arm64/arch-arm64-armv8-a/shared/vndk-sp/libutils.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH := arm arm64
LOCAL_MODULE_TAGS := optional
LOCAL_CHECK_ELF_FILES := false
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_foundation-v33
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_arm := device/xiaomi/earth/vndk/v33/arm64/libstagefright_foundation.so
LOCAL_SRC_FILES_arm64 := device/xiaomi/earth/vndk/v33/arm64/libstagefright_foundation.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TARGET_ARCH := arm arm64
LOCAL_MODULE_TAGS := optional
LOCAL_CHECK_ELF_FILES := false
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
