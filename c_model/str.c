#include <svdpi.h>
#include <stdlib.h>
#include <string.h>

#define STR_LEN (20)
#define BUF_SIZE ((STR_LEN) + 1)

const char *str(const char *inp) {
    char *out;
    size_t out_size;

    out = (char *) malloc(sizeof(char) * BUF_SIZE);

    (void) strncpy(out, inp, STR_LEN - 1);
    out_size = strnlen(out, STR_LEN);

    strncat(out, "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", STR_LEN - out_size);

    return (const char *) out;
}
