#
# Copyright (C) 2021 Teracube Inc.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration.
$(call inherit-product, device/teracube/2e/device.mk)

# Inherit some common amyROM stuff
$(call inherit-product, vendor/amy/config/common_full_phone.mk)

# amyROM specific overlays
DEVICE_PACKAGE_OVERLAYS += \
    overlay-amy

DEVICE_CUSTOM_BOOTANIMATION := device/teracube/2e/prebuilt/bootanimation.zip

PRODUCT_BRAND := teracube
PRODUCT_MANUFACTURER := Teracube
PRODUCT_DEVICE := 2e
PRODUCT_NAME := amy_2e
PRODUCT_MODEL := Teracube 2e

TARGET_VENDOR := teracube
TARGET_VENDOR_PRODUCT_NAME := 2e
