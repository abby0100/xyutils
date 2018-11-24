#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "xyutils.h"

#define TAG         "[xyutils] "
#define STRING_LEN  256


int check_pointer_invalid(void *ptr) {
    xylogd();
    
    if (NULL == ptr) {
        return -1;
    } else {
        return 0;
    }
}

int print_util_usage(char *command, char *param1, char *usage) {
    xylogd();
    //xylogd("command\t%s", command);
    //xylogd("param1\t%s", param1);
    
    if ( check_pointer_invalid(command) != 0 && check_pointer_invalid(param1) != 0 ) {
        return -1;
    }

    sprintf(usage, "\n[Usage]\n\t%s <%s>\n\n", command, param1);
    //xylogd("usage\t%s", usage);
    return 0;
}

int check_file_exist(char *path) {
    xylogd();

    if (check_pointer_invalid(path) != 0) {
        return -1;
    }

    if (access(path, F_OK) != 0) {
        return -1;
    }

    return 0;
}

