# Packages
PRODUCT_PACKAGES += \
    DU-Themes \
    CorvusWalls \
    LiveWallpapers \
    LiveWallpapersPicker \
    CustomDoze \
    OmniStyle \
    messaging \
    WallpaperPicker2 \
    ThemePicker \
    TouchGestures \
    StitchImage \
    Recorder \
    Seedvault

# Charger mode images
ifeq ($(TARGET_INCLUDE_PIXEL_CHARGER),true)
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images
endif

# Allows registering device to Google easier for gapps
# Integrates package for easier Google Pay fixing
PRODUCT_PACKAGES += \
    sqlite3
