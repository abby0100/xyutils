#ifndef _XYUTILS_H_
#define _XYUTILS_H_

#define LOG_ENABLE  0

#define xylog(format,...) \
        printf("%-10s +%-5d %-20s "format"\n", __FILE__, __LINE__, __func__, ##__VA_ARGS__);

#define xylogd(format,...) \
    if(LOG_ENABLE) {    \
        printf("%-10s +%-5d %-20s "format"\n", __FILE__, __LINE__, __func__, ##__VA_ARGS__);  \
    }

int check_pointer_invalid(void *ptr);

int print_util_usage(char *command, char *param1, char *usage); 

int check_file_exist(char *path);

#endif
