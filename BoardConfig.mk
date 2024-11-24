LOCAL_PATH := device/samsung/gts28ltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage_gts28ltexx_defconfig

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# RIL
BOARD_MODEM_TYPE := ss333
BOARD_PROVIDES_LIBRIL := true

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts28lte,gts28ltexx

# Allow ADB to start before lockscreen
WITH_ADB_INSECURE := true

# Add RIL-specific SELINUX policy
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy-ril

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk

# Add RIL-specific HIDL manifest _after_ the common one.
#   Note that LOCAL_PATH gets overwritten by the common
#   board config so we need to explicitly set here again.
LOCAL_PATH := device/samsung/gts28ltexx
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(LOCAL_PATH)/framework_compatibility_matrix.xml
