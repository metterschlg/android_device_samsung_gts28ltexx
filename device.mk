LOCAL_PATH := device/samsung/gts28ltexx

# Ramdisk
PRODUCT_PACKAGES += \
	ueventd.universal5433.rc \
    init.baseband.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/gts28ltexx/overlay	
	
# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0

PRODUCT_PACKAGES += \
    rild \
    libril \
    libsecril-client \
    libsecril-client-sap \
    modemloader

PRODUCT_PACKAGES += \
    SamsungServiceMode	

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml
	
# call the proprietary setup
$(call inherit-product, vendor/samsung/gts28ltexx/gts28ltexx-vendor.mk)
