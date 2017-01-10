LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := UEIQuicksetSDKLeTV
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := letv
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES     := UEIQuicksetSDKLeTV.apk
LOCAL_CERTIFICATE   := shared
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := LetvRemoteControl
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := letv
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES     := LetvRemoteControl.apk
LOCAL_CERTIFICATE   := shared

IR_LIBS := libbvfixed.so libyzs_usc.so
IR_SYMLINKS := $(addprefix $(TARGET_OUT_APPS)/$(LOCAL_MODULE)/lib/arm/,$(notdir $(IR_LIBS)))

$(IR_SYMLINKS):
	@mkdir -p $(dir $@)
	ln -sf /system/lib/$(notdir $@) $@

LOCAL_ADDITIONAL_DEPENDENCIES := $(IR_SYMLINKS)

include $(BUILD_PREBUILT)
