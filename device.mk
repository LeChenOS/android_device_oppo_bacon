# This file includes all definitions that apply to ALL find7a devices, and
# are also specific to find7a devices
#
# Everything in this directory will become public

# Include common makefile
#$(call inherit-product, device/oppo/msm8974-common/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

LOCAL_PATH := device/oppo/bacon

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.bacon.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/configs/fstab.bacon:root/fstab.qcom \
    $(LOCAL_PATH)/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# Sensor configuration from Oppo
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensor/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Properties

