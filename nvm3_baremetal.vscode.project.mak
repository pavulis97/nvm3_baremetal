####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = /Users/pmaksimkin/SimplicityStudio/SDKs/gecko_sdk_3
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32ZG23B020F512IM48=1' \
 '-DSL_BOARD_NAME="BRD4210A"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_2_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_915=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32ZG23B020F512IM48=1' \
 '-DSL_BOARD_NAME="BRD4210A"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_2_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_915=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG23/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA