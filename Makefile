TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = com.noodlecake.ssg4


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GolfBlitziPadTextureLoader

GolfBlitziPadTextureLoader_FILES = Tweak.x
GolfBlitziPadTextureLoader_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
