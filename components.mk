# Stijn Martens (seymar), 20 December 2020

# The components to build for the project and all its apps.
# Components that only need to be build for a specific app can be set in the
# app/<app>/component.mk COMPONENT_DEPENDS variable 
#
# This list has been stripped to increase build speed

COMPONENTS += app_trace
COMPONENTS += app_update
# COMPONENTS += asio
COMPONENTS += bootloader
COMPONENTS += bootloader_support
# COMPONENTS += bt

# COMPONENTS += cbor
# 	Concise Binary Object Representation (RFC 8949)
#   Tiny representation of JSON-like data
#   Used by: coap

# COMPONENTS += cmock
#   Unit testing library to mock external functions and more..
#   Used by: a lot of components their test folder

# COMPONENTS += coap 
#   Constrained Application Protocol (RFC 7252)

COMPONENTS += console

COMPONENTS += cxx
#   Something to do with C++ exceptions and Multithreading

COMPONENTS += driver
#   UART, SPI, I2C, ADC, DAC & more peripheral drivers

COMPONENTS += efuse
COMPONENTS += esp-tls
COMPONENTS += esp32
#   COMPONENTS += esp_adc_cal 
COMPONENTS += esp_common

COMPONENTS += esp_eth
#   Used by lwip

COMPONENTS += esp_event
#   Event handler for Wi-Fi etc.

COMPONENTS += esp_gdbstub

# COMPONENTS += esp_hid 
#   Bluetooth HID 

COMPONENTS += esp_http_client
COMPONENTS += esp_http_server
# COMPONENTS += esp_https_ota 
# COMPONENTS += esp_https_server 
COMPONENTS += esp_hw_support
COMPONENTS += esp_ipc
# COMPONENTS += esp_local_ctrl 
COMPONENTS += esp_netif
COMPONENTS += esp_pm
COMPONENTS += esp_ringbuf
COMPONENTS += esp_rom
# COMPONENTS += esp_serial_slave_link
COMPONENTS += esp_system
COMPONENTS += esp_timer
COMPONENTS += esp_websocket_client
COMPONENTS += esp_wifi
COMPONENTS += espcoredump
COMPONENTS += esptool_py

# COMPONENTS += expat
#   XML parsing library

COMPONENTS += fatfs
# COMPONENTS += freemodbus 
COMPONENTS += freertos
COMPONENTS += hal
COMPONENTS += heap
# COMPONENTS += idf_test

# COMPONENTS += jsmn
#   Jasmine JSON parse

# COMPONENTS += json
#   cJSON JSON parser

# COMPONENTS += libsodium
#   Encryption

COMPONENTS += log
COMPONENTS += lwip
COMPONENTS += mbedtls
COMPONENTS += mdns
# COMPONENTS += mqtt
COMPONENTS += newlib
COMPONENTS += nghttp
COMPONENTS += nvs_flash
# COMPONENTS += openssl
COMPONENTS += partition_table
# COMPONENTS += perfmon
# COMPONENTS += protobuf-c
# COMPONENTS += protocomm

COMPONENTS += pthread
#   Threading used by lwip

COMPONENTS += sdmmc
#   SD Flash

COMPONENTS += soc
COMPONENTS += spi_flash
COMPONENTS += spiffs
#   SPI Flash FileSystem

COMPONENTS += tcp_transport
COMPONENTS += tcpip_adapter

# COMPONENTS += ulp
#   Ultra Low Power coprocessor

# COMPONENTS += unity
#   Unit testing

COMPONENTS += vfs
#   Virtual File System

COMPONENTS += wear_levelling
# COMPONENTS += wifi_provisioning 
COMPONENTS += wpa_supplicant
COMPONENTS += xtensa