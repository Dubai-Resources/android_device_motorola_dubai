#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dubai_g-user 14 U1RDS34.80-40-5-6 ba4fd-68ef4 release-keys" \
    BuildFingerprint=motorola/dubai_g/dubai:14/U1RDS34.80-40-5-6/ba4fd-68ef4:user/release-keys \
    DeviceProduct=dubai_g

# Project Matrixx Stuff
MATRIXX_BUILD_TYPE := Official
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_WALLEFFECT := true

# Perf Activity Anim Override
PERF_ANIM_OVERRIDE := true
