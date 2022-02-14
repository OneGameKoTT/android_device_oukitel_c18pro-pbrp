LOCAL_PATH := device/oukitel/c18pro

BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true


TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53


TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
TARGET_USES_64_BIT_BINDER := true


TARGET_BOARD_PLATFORM := mt6757
TARGET_BOOTLOADER_BOARD_NAME := mt6757
TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_KERNEL := device/oukitel/c18pro/prebuilt/Image.gz
TARGET_RECOVERY_FSTAB := device/oukitel/c18pro/recovery.fstab

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_SUPERSU := true

TW_THEME := portrait_hdpi

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := "roboto_15x24.h"
TW_MAX_BRIGHTNESS := 255
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_CRYPTO := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

SHRP_DEVICE_CODE := c18pro
SHRP_PATH := device/oukitel/$(SHRP_DEVICE_CODE)
SHRP_MAINTAINER := MyNameIsKitsune
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_DARK := true
		

