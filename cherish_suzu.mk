#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Environment Flags
IS_PHONE := true
TARGET_USES_BLUR := false
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=

# Un|Official Status
CHERISH_BUILD_TYPE=UNOFFICIAL

# GApps
TARGET_GAPPS_ARCH := arm64
TARGET_USES_MINI_GAPPS := true

# Boot Animation Resolution
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
USE_PIXEL_CHARGING := true

# Device Identifiers
PRODUCT_NAME := cherish_suzu
PRODUCT_DEVICE := suzu
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia X

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=suzu \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.221205.012 9283063 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ1A.221205.012/9283063:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile