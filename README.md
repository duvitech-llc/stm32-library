# STM32 Custom Library for STM32H7/F7 Processors

This project provides a lightweight and reusable library for STM32H7/F7 microcontrollers, designed to simplify development workflows. It features a getGreeting function that takes a string and returns a greeting message. The library is built using CMake and is cross-compiled with the GNU ARM Embedded Toolchain (arm-none-eabi-gcc), making it easy to integrate into STM32CubeMX projects.

## Prerequisites

Before building the library, ensure you have the following tools and packages installed:

### Install Required Tools
1. **Update the package list:**
   ```bash
   sudo apt update
   sudo apt install gcc-arm-none-eabi cmake
   ```

## Build Instructions

### Clone the Repository
1. **Clone this repository to your local machine:**
   ```bash
    git clone https://github.com/your-repo/mylibrary.git
    cd mylibrary
   ```
2. **Configure the Build:**
   ```bash
    mkdir build && cd build
    cmake .. -DCMAKE_TOOLCHAIN_FILE=../stm32h7_toolchain.cmake
   ```
3. **Buiild the Library:**
The static library (libmy_library.a) will be generated in the build directory.
   ```bash
    cmake --build .
   ```
4. **Check architecture:**
   ```bash
    readelf -h libmy_library.a | grep 'Class\|File\|Machine'
   ```

## Usage Instructions
### Integration with STM32CubeMX Projects
   
1. **Copy Files:**
   Copy the include/my_library.h header file and the build/libmy_library.a static library to a suitable location in your STM32CubeMX project (e.g., Middlewares/MyLibrary).
2. **Add Include Paths:**
   Add the path to my_library.h to the project's include directories in your IDE (e.g., STM32CubeIDE).
3. **Link the Library:**
   Add libmy_library.a to the linker inputs in your IDE.
4. **Use the Library:**
   Include my_library.h in your application code and use the getGreeting function. For example:
   ```c
    #include "my_library.h"

    void main(void) {
        const char* greeting = getGreeting("STM32H7");
        printf("%s\n", greeting);
    }
   ```
5. **Build the STM32CubeMX Project:**
   Build your CubeMX project as usual, and the library will be linked.


## Cleanup
To clean the build directory, run:
   ```bash
    rm -rf build
   ```




