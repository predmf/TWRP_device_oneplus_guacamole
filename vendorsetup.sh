# Clone/Fetch Upstream Device Dependencies
# Device Tree


echo "Cloning Hardware"
git clone https://github.com/mnrniloy/hardware_oneplus.git -b 14 hardware/oneplus
echo ""

# Clone/Fetch Upstream Device Dependencies
# Device Tree
#echo "Cloning OnePlus 7Pro Tree"
# add clang-proton to our path
#export PATH="$(gettop)/prebuilts/clang/host/linux-x86/clang-proton/bin:$PATH"
echo "Cloning kernel tree"
git clone https://github.com/mnrniloy/Neptune_kernel_sm8150_oneplus.git -b inline-erofs kernel/oneplus/sm8150 || echo "Already Done"
echo "Proceeding"

echo "Cloning sm8150-Common Tree"
git clone https://github.com/mnrniloy/TWRP_device_oneplus_sm8150-common.git -b 14-twrp device/oneplus/sm8150-common
echo ""

# add clang-proton to our path
#export PATH="$(gettop)/prebuilts/clang/host/linux-x86/clang-proton/bin:$PATH"

export TARGET_ARCH="arm64-v8a"

# Some about us
export FOX_VERSION="R12.1"
export OF_MAINTAINER=WHITEFX274

#Fox config location
export FOX_SETTINGS_ROOT_DIRECTORY="/data/recovery/"
#export FOX_USE_DATA_RECOVERY_FOR_SETTINGS="1"

# Build environment stuffs
export ALLOW_MISSING_DEPENDENCIES=true
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="0"
#export FOX_VANILLA_BUILD="1"
export LC_ALL="C"
export TARGET_DEVICE_ALT="guacamole, guacamoleb, guacamolec, oneplus 7, OnePlus7Pro, OnePlus7T, OnePlus7"

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export FOX_USE_SPECIFIC_MAGISK_ZIP=/device/oneplus/guacamole/magisk/Magisk-v27.0.zip
export FOX_DELETE_MAGISK_ADDON=1

#export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1

# Skip mounting storage
#export OF_SKIP_FBE_DECRYPTION="1"

# We have a/b partitions
export FOX_AB_DEVICE=1

# Screen specifications
export TW_MAX_BRIGHTNESS=1000
#export OF_HIDE_NOTCH=1
export OF_SCREEN_H=2340
export OF_STATUS_H=-10
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48

# Device stuff
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

# OTA for custom ROMs
export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

# For some reason this is dumb and necessary
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1601559499"

# -- Add settings for R12 --
#export FOX_ENABLE_APP_MANAGER="1"
#export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export FOX_PATCH_VBMETA_FLAG=1
export OF_FORCE_USE_RECOVERY_FSTAB=true
export OF_DEFAULT_KEYMASTER_VERSION=4.0
export OF_NO_SPLASH_CHANGE=1
export OF_ADVANCED_SECURITY=1
#export FOX_NO_SAMSUNG_SPECIAL=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"
# -- end R12 settings --


# Add some extras
export OF_USE_LEGACY_BATTERY_SERVICES=1
#export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
#export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_ZIP_BINARY=1
export FOX_ASH_IS_BASH=1
export FOX_USE_BASH_SHELL=1
#export OF_USE_LZ4_COMPRESSION=1
export FOX_USE_NANO_EDITOR=1
#export OF_USE_GREEN_LED=0
