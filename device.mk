LOCAL_PATH := device/samsung/gts28ltexx

# Ramdisk
PRODUCT_PACKAGES += \
    ueventd.universal5433.rc \
    init.baseband.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml #\
#    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/samsung/gts28ltexx/overlay

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0 \
    libxml2 \
    libprotobuf-cpp-full \
    rild \
    libril \
    libreference-ril \
    libsecril-client \
    libsecril-client-sap \
    modemloader \
    Stk

# RILD
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/rild.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/rild.legacy.rc

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service
#PRODUCT_PACKAGES += \
#    vendor.qti.hardware.vibrator.service
#
#PRODUCT_COPY_FILES += \
#    vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

#PRODUCT_PACKAGES += \
#    SamsungServiceMode

# RIL-specific prereq libraries
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm/arch-arm-armv7-a-neon/shared/vndk-sp/libcutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcutils-v29.so

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# call the proprietary setup
$(call inherit-product, vendor/samsung/gts28ltexx/gts28ltexx-vendor.mk)
