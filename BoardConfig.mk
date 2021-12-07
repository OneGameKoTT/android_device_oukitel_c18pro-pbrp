
TARGET_BOOTLOADER_BOARD_NAME := k57pv1_dm_64

# Arch
# For 64 bit
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6757
TARGET_CPU_ABI := arm64-v8a
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true

# For 32 bit
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic


DEVICE_RESOLUTION := 720x1600          
TARGET_SCREEN_HEIGHT := 1600                 
TARGET_SCREEN_WIDTH := 720                     
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_EXCLUDE_SUPERSU := false                    
TW_INCLUDE_CRYPTO := true                   
TW_INPUT_BLACKLIST := "hbtp_vm"              
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true


TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128


TARGET_PREBUILT_KERNEL := device/oukitel/c18pro/prebuilt/Image.gz


BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11f88000
BOARD_KERNEL_TAGS_OFFSET := 0x12f88000
# BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x11f88000 --tags_offset 0x12f88000 --header_version 2
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)


# Storages
BOARD_HAS_NO_MISC_PARTITION := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/extSdCard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "extSdCard"
TW_FLASH_FROM_STORAGE := true
TW_SDEXT_NO_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true


# File Systems
TARGET_RECOVERY_FSTAB = device/oukitel/c18pro/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true


#33554432

BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_FLASH_BLOCK_SIZE := 131072


BOARD_VNDK_RUNTIME_DISABLE := false

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

PB_DISABLE_DEFAULT_DM_VERITY := true



