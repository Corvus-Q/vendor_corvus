# Boot Animation

corvus_device := $(patsubst %f,%,$(subst corvus_,,$(TARGET_PRODUCT)))

ifneq ($(filter begonia raphael enchilada lavender mido wayne whyred platina ginkgo vince twolip beryllium violet X00T RMX1801 tissot x2 jasmine_sprout sirius grus kenzo davinci,$(corvus_device)),)
scr_resolution := 1080
endif

ifneq ($(filter ysl riva land santoni X00P,$(corvus_device)),)
scr_resolution := 720
endif

ifneq ($(wildcard vendor/corvus/prebuilt/common/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/corvus/prebuilt/common/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif