####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "C:/Users/wsanu/.silabs/slt/installs/conan/p/simplfa179856e7001/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.3")
set(PKG_PATH "C:/Users/wsanu/.silabs/slt/installs")

add_library(slc OBJECT
    "../${COPIED_SDK_PATH}/platform/common/src/sl_assert.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_syscalls.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_process_action.c"
    "../app.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_i2c_init.c"
    "../i2c_leader_example.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_i2c.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_i2c.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "../${COPIED_SDK_PATH}/platform/CMSIS/Core/Include"
    "../${COPIED_SDK_PATH}/platform/common/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
)

target_compile_definitions(slc PUBLIC
    "SIWG917Y121MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_INTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "__FREERTOS_OS_WISECONNECT=1"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SLI_CODE_CLASSIFICATION_DISABLE=1"
    "SLI_SI91X_MCU_ENABLE_IPMU_APIS=1"
    "SL_SI91X_SOC_MODE=1"
    "CRC_ROMDRIVER_PRESENT=1"
    "SI91X_32kHz_EXTERNAL_OSCILLATOR=1"
    "DEBUG_ENABLE=1"
    "DEBUG_UART=1"
    "ENABLE_DEBUG_MODULE=1"
    "SL_SI91X_SI917_RAM_MEM_CONFIG=1"
    "UDMA_ROMDRIVER_PRESENT=1"
    "__STATIC_INLINE=static inline"
    "SL_SI91X_I2C_DMA=1"
    "SI917=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SLI_SI91X_MCU_COMMON_FLASH_MODE=1"
    "USER_CONFIGURATION_ENABLE=1"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_COMPONENT_CATALOG_PRESENT=1"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "nosys"
    "c"
    "m"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:C>:-Wno-error=deprecated-declarations>
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=deprecated-declarations>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=softfp>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./sl_si91x_i2c_driver_leader.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>")
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile_SoC.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>/sl_si91x_i2c_driver_leader.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA