# Packages
PRODUCT_PACKAGES += \
    SubstratumSignature \
    CustomDoze \
    WallpaperPicker \
    WeatherClient \
    Longshot \
    Recorder \
    Gallery2 \
    Calculator \
    DeskClock \
    Via

# Cutout control overlays
PRODUCT_PACKAGES += \
    HideCutout \
    StatusBarStock

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni
