#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "xyutils.h"
#define TAG "[filter_file]"

int filter_file(char *path) {
    xylog("path\t%s", path);

    if (check_file_exist(path) != 0) {
        xylog("file '%s' not exsited", path);
        return -1;
    }
    xylog("file '%s' exsited", path);

    if(check_has_substr("hello world", "o_wor") != 0) {
        xylog("don't have substr");
    } else {
        xylog("have substr");
    }

    return 0;
}

