modules := config firmware wpa_supplicant_8_lib

include $(call all-named-subdir-makefiles,$(modules))
