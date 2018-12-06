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

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk
