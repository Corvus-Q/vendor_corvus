# Set all versions
RAVEN_LAIR ?= Unofficial
CORVUS_VERSION_BASE := 9.5-R
CORVUS_CODENAME := TheStorm

# Set all versions
BUILD_DATE := $(shell date -u +%d%m%Y)
BUILD_TIME := $(shell date -u +%H%M)
BUILD_DATE_TIME := $(BUILD_TIME)$(BUILD_DATE)
ROM_FINGERPRINT := Corvus/$(RAVEN_LAIR)/$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_DATE)/$(BUILD_TIME)

ifeq ($(USE_GAPPS), true)
    CORVUS_VERSION := Corvus_v$(CORVUS_VERSION_BASE)-$(CORVUS_CODENAME)-$(CORVUS_BUILD)-Gapps-$(BUILD_DATE)-$(RAVEN_LAIR)-$(BUILD_TIME)
else
    CORVUS_VERSION := Corvus_v$(CORVUS_VERSION_BASE)-$(CORVUS_CODENAME)-$(CORVUS_BUILD)-$(BUILD_DATE)-$(RAVEN_LAIR)-$(BUILD_TIME)
endif

CORVUS_PROPERTIES := \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.build.datetime=$(BUILD_DATE_TIME) \
    ro.corvus.build.date=$(BUILD_DATE) \
    ro.corvus.version=$(CORVUS_VERSION) \
    ro.corvus.codename=$(CORVUS_CODENAME) \
    ro.corvus.build.type=$(RAVEN_LAIR) \
    ro.corvus.build.version=$(CORVUS_VERSION_BASE) \
    ro.corvus.fingerprint=$(ROM_FINGERPRINT)
