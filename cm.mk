## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := R829T

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/OPPO/R829T/device_R829T.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := R829T
PRODUCT_NAME := cm_R829T
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R829T
PRODUCT_MANUFACTURER := OPPO
