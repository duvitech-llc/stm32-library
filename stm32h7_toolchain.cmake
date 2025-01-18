# Specify the minimum version of CMake
cmake_minimum_required(VERSION 3.13)

# Set the cross-compiler
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Specify the compiler and linker
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)

# Specify the path to your STM32Cube HAL/LL library (adjust as needed)
set(STM32_CUBE_PATH "/path/to/STM32CubeH7/Drivers")

# Compiler and linker flags for STM32
set(CMAKE_C_FLAGS "-mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -O2 -ffunction-sections -fdata-sections")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -fno-exceptions -fno-rtti")
set(CMAKE_EXE_LINKER_FLAGS "-T${CMAKE_SOURCE_DIR}/STM32H7_FLASH.ld -Wl,--gc-sections -Wl,-Map=output.map")

# Specify the linker script
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
