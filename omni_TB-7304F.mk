$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Lenovo/TB-7304F/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := TB-7304F
PRODUCT_NAME := omni_TB-7304F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB-7304F
PRODUCT_MANUFACTURER := Lenovo

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Lenovo/LenovoTB-7304F/TB-7304F:7.0/NRD90M/TB-7304F_S100018_220523_ROW:user/release-keys" \
    PRIVATE_BUILD_DESC="TB-7304F_RF01_220523 release-keys"
