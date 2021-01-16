# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit device configuration
$(call inherit-product, device/samsung/gts28ltexx/device.mk)
$(call inherit-product, device/samsung/gts2-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/config/aex_props.mk)
$(call inherit-product, vendor/aosp/config/common.mk)
$(call inherit-product, vendor/aosp/config/telephony.mk)

PRODUCT_NAME := aosp_gts28ltexx
PRODUCT_DEVICE := gts28ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T715
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=gts28ltexx \
  TARGET_DEVICE=gts28ltexx \
  PRIVATE_BUILD_DESC="gts28ltexx-user 7.0 NRD90M T715XXU2CRB1 release-keys"

BUILD_FINGERPRINT := samsung/gts28ltexx/gts28lte:7.0/NRD90M/T715XXU2CRB1:user/release-keys
