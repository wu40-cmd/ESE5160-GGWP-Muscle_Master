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
    "../autogen/sl_si91x_button_instances.c"
    "../autogen/sl_si91x_led_instances.c"
    "../button_baremetal.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/button/src/sl_si91x_button.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/button/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/inc"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./sl_si91x_button_text.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:sl_si91x_button_text>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:sl_si91x_button_text>/sl_si91x_button_text.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA