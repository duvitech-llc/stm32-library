#include "my_library.h"
#include <stdio.h>

static char greeting_buffer[100];

const char* getGreeting(const char* name) {
    snprintf(greeting_buffer, sizeof(greeting_buffer), "Hello, %s!", name);
    return greeting_buffer;
}
