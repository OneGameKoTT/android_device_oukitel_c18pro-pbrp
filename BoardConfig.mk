DEVICE_PATH := device/oukitel/c18pro

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

BUILD_BROKEN_DUP_RULES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k57pv1_dm_64
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11f88000
BOARD_KERNEL_TAGS_OFFSET := 0x12f88000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := oukitel_defconfig
TARGET_KERNEL_SOURCE := kernel/oukitel/c18pro

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_VENDORIMAGE := true
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := mt6757

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6757
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Verified Boot
#BOARD_AVB_ENABLE := true
#BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
#BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
#BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_USES_USB_CONFIGFS := true
BOARD_ENABLE_ADB_IN_RECOVERY := true

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Treble
BOARD_VNDK_VERSION := current

# TWRP
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true
TW_NO_LEGACY_PROPS := true
TW_USE_NEW_MINADBD := true
TWRP_INCLUDE_LOGCAT := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
#TW_OEM_BUILD := true
#TW_NO_EXFAT := true
TW_EXTRA_LANGUAGES := false
TW_INCLUDE_NTFS_3G := false
TW_DEFAULT_LANGUAGE := en
SMALLER_FONT_FOOTPRINT := true

# PB
PB_DISABLE_DEFAULT_DM_VERITY := true

# Inherit the proprietary files
# -include vendor/oukitel/c18pro/BoardConfigVendor.mk
