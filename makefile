#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_stuttgart.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/stuttgart

# All apps from original ZIP, but has smali files chanded
local-modified-apps := #OriginalSettings Camera

local-modified-jars := #framework

# All apks from MIUI
local-miui-removed-apps := Stk

local-miui-modified-apps := #MiuiHome Settings Phone Mms MiuiSystemUI ThemeManager MiuiGallery

#include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
local-pre-zip-misc:
#cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
#cp other/build.prop $(ZIP_DIR)/system/build.prop

local-rom-zip := MIUI_stuttgart.zip
local-put-to-phone:
	adb shell rm /sdcard/$(local-rom-zip)
	adb push out/$(local-rom-zip) /sdcard/
	adb reboot recovery

local-root-phone:
	adb shell su -c insecure &
	adb kill-server
