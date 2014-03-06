$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_COPY_FILES := \
  device/qcom/flame/touchscreen.idc:system/usr/idc/TSC2007Touchscreen.idc \

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/qcom/flame/flame-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.display.colorfill=1 \
  ro.moz.ril.emergency_by_default=true \
  org.bluez.device.conn.type=array \

PRODUCT_NAME := full_flame
PRODUCT_DEVICE := flame
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := qcom
PRODUCT_MODEL := flame
