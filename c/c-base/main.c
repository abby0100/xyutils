#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "xyutils.h"


int main(int argc, char **argv) {
    xylog();

    char usage[256] = {0};
    char *param1;

    if (argc < 2 ||  ! strncmp(argv[1], "-h", 2) ) {
        print_util_usage(argv[0], "param1", usage);
        printf("%s\n", usage);
        return -1;
    }

    param1 = argv[1];
    int ret = 0;

    return ret;
}
