$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/OPPO/R829T/R829T-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/OPPO/R829T/overlay

LOCAL_PATH := device/OPPO/R829T
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/OPPO/R829T/recovery/enableswap.sh:recovery/root/enableswap.sh \
    device/OPPO/R829T/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/OPPO/R829T/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/OPPO/R829T/recovery/fstab:recovery/root/fstab \
    device/OPPO/R829T/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/OPPO/R829T/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/OPPO/R829T/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/OPPO/R829T/recovery/sec.ko:recovery/root/sec.ko \
    device/OPPO/R829T/recovery/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
    device/OPPO/R829T/recovery/ueventd.rc:recovery/root/ueventd.rc \
    device/OPPO/R829T/recovery/sbchk/sbchk:recovery/root/sbchk/sbchk \
    device/OPPO/R829T/recovery/sbchk/sec_chk.sh:recovery/root/sbchk/sec_chk.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_R829T
PRODUCT_DEVICE := R829T
