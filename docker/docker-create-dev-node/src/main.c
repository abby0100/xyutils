#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define DEV_CONFIG_SCRIPT       "./create_devices.sh"

static int create_aic_devices() {

    if(access(DEV_CONFIG_SCRIPT, F_OK) != 0) {
        printf("create_aic_devices failed to access file '%s'\n", DEV_CONFIG_SCRIPT);
        return -1; 
    }   
    printf("create_aic_devices access file '%s' ok\n", DEV_CONFIG_SCRIPT);
    
    printf("create_aic_devices run execve\n");
    char *script_argv[] = {NULL, DEV_CONFIG_SCRIPT, NULL};
    script_argv[0] = "/bin/bash";
    //script_argv[0] = "/system/bin/sh";
    execve(script_argv[0], script_argv, NULL);

    //printf("create_aic_devices run system\n");
    //system(DEV_CONFIG_SCRIPT);
    return 0;
}

int main() {

    printf("main -- xy\n");
    
    if (create_aic_devices() != 0) {
        printf("create_aic_devices failed, exiting...\n");
        return -1;
    }
    printf("create_aic_devices succeeded.\n");

//    while(1) {
//        sleep(60);
//    }
    printf("\n");
    return 0;
}
