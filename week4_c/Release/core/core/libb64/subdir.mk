################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32\libb64\cdecode.c \
C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32\libb64\cencode.c 

C_DEPS += \
.\core\core\libb64\cdecode.c.d \
.\core\core\libb64\cencode.c.d 

AR_OBJ += \
.\core\core\libb64\cdecode.c.o \
.\core\core\libb64\cencode.c.o 


# Each subdirectory must supply rules for building sources it contributes
core\core\libb64\cdecode.c.o: C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32\libb64\cdecode.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\apps\sloeber\arduinoPlugin\packages\esp32\tools\xtensa-esp32-elf-gcc\1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-gcc" -DESP_PLATFORM -DMBEDTLS_CONFIG_FILE="\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/config" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_trace" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_update" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/asio" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bootloader_support" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bt" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/coap" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/console" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/driver" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-tls" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_adc_cal" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_event" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_client" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_server" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_ota" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_server" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_ringbuf" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ethernet" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/expat" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fatfs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freemodbus" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freertos" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/heap" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/idf_test" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/jsmn" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/json" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/libsodium" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/log" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/lwip" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mbedtls" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mdns" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/micro-ecc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mqtt" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/newlib" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nghttp" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nvs_flash" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/openssl" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protobuf-c" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protocomm" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/pthread" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/sdmmc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/smartconfig_ack" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/soc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spi_flash" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spiffs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcp_transport" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcpip_adapter" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ulp" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/unity" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/vfs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wear_levelling" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wifi_provisioning" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wpa_supplicant" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/xtensa-debug-module" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32-camera" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-face" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fb_gfx" -std=gnu99 -Os -g3 -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wpointer-arith -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -Wno-old-style-declaration -MMD -c -DF_CPU=160000000L -DARDUINO=10802 -DARDUINO_ESP32_DEV -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="ESP32_DEV" -DARDUINO_VARIANT="esp32"  -DESP32 -DCORE_DEBUG_LEVEL=5    -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32" -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\variants\esp32" -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\libraries\Preferences\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\libb64\cencode.c.o: C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32\libb64\cencode.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\apps\sloeber\arduinoPlugin\packages\esp32\tools\xtensa-esp32-elf-gcc\1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-gcc" -DESP_PLATFORM -DMBEDTLS_CONFIG_FILE="\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/config" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_trace" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_update" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/asio" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bootloader_support" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bt" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/coap" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/console" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/driver" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-tls" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_adc_cal" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_event" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_client" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_server" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_ota" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_server" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_ringbuf" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ethernet" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/expat" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fatfs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freemodbus" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freertos" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/heap" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/idf_test" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/jsmn" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/json" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/libsodium" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/log" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/lwip" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mbedtls" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mdns" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/micro-ecc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mqtt" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/newlib" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nghttp" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nvs_flash" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/openssl" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protobuf-c" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protocomm" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/pthread" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/sdmmc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/smartconfig_ack" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/soc" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spi_flash" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spiffs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcp_transport" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcpip_adapter" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ulp" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/unity" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/vfs" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wear_levelling" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wifi_provisioning" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wpa_supplicant" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/xtensa-debug-module" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32-camera" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-face" "-IC:\apps\sloeber\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fb_gfx" -std=gnu99 -Os -g3 -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wpointer-arith -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -Wno-old-style-declaration -MMD -c -DF_CPU=160000000L -DARDUINO=10802 -DARDUINO_ESP32_DEV -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="ESP32_DEV" -DARDUINO_VARIANT="esp32"  -DESP32 -DCORE_DEBUG_LEVEL=5    -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32" -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\variants\esp32" -I"C:\apps\sloeber\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\libraries\Preferences\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


