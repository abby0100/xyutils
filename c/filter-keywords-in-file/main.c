#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "xyutils.h"
#define TAG " ---> main "

int filter_file(const char *path);

int main(int argc, char **argv) {
    xylog();

    //char usage[STRING_LEN] = {0};
    char usage[256] = {0};
    char *file_to_be_filtered;

    if (argc < 2 ||  ! strncmp(argv[1], "-h", 2) ) {
        print_util_usage(argv[0], "file_to_be_filtered", usage);
        printf("%s\n", usage);
        return -1;
    }

    xylog("go");
    file_to_be_filtered = argv[1];

    int ret = filter_file(file_to_be_filtered);

    return ret;
}
