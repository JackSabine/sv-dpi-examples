#include <svdpi.h>
#include <stdlib.h>
#include <string.h>

const char *genv(const char *env_name) {
    return (const char *) getenv(env_name);
}
