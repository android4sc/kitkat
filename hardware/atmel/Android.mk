# Setting LOCAL_PATH will mess up all-subdir-makefiles, so do it beforehand.
LEGACY_WILC1000_MAKEFILES := $(call all-named-subdir-makefiles,wilc1000)

ifneq ($(filter sama5d3-ek, $(TARGET_BOOTLOADER_BOARD_NAME)),)
include $(call all-named-subdir-makefiles,sama5dx)
endif
ifneq ($(filter sama5d4-ek, $(TARGET_BOOTLOADER_BOARD_NAME)),)
include $(call all-named-subdir-makefiles,sama5dx)
endif

########################

ifneq ($(filter wilc1000, $(BOARD_WLAN_DEVICE)),)
include $(LEGACY_WILC1000_MAKEFILES)
endif

########################

