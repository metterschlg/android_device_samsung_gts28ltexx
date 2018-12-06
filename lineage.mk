# Inherit device configuration
$(call inherit-product, device/samsung/gts28ltexx/device.mk)
$(call inherit-product, device/samsung/gts2-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/lineage/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gts28ltexx
PRODUCT_DEVICE := gts28ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T715
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
BUILD_FINGERPRINT := samsung/gts28ltexx/gts28lte:7.0/NRD90M/T715XXU2CRB1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts28ltexx
