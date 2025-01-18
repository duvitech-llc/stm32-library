cmake_minimum_required(VERSION 3.13)

# Project name
project(MyLibrary LANGUAGES C)

# Set the target name
set(LIB_NAME my_library)

# Use the STM32H7 toolchain
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/stm32h7_toolchain.cmake)

# Add the library
add_library(${LIB_NAME} STATIC)

# Set include directories
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Add source files
target_sources(${LIB_NAME}
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src/my_library.c
)

# Specify the standard
target_compile_features(${LIB_NAME} PUBLIC c_std_99)

# Include STM32Cube HAL/LL Drivers
target_include_directories(${LIB_NAME} PRIVATE "${STM32_CUBE_PATH}/STM32H7xx_HAL_Driver/Inc")
target_include_directories(${LIB_NAME} PRIVATE "${STM32_CUBE_PATH}/CMSIS/Device/ST/STM32H7xx/Include")
target_include_directories(${LIB_NAME} PRIVATE "${STM32_CUBE_PATH}/CMSIS/Include")
