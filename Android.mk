LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := devmem2

LOCAL_SRC_FILES := devmem2.c

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CFLAGS := -DHAVE_NEON=1
    LOCAL_SRC_FILES += 
endif


LOCAL_LDLIBS := -llog

include $(BUILD_EXECUTABLE)
