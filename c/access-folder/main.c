#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

char *file_or_folder = "/uevent_dump/devices/";

void print_usage(char *command) {

    printf("[Usage]\n\t%s <file_or_folder_path>\n\n", command);
}

int judge_path_exist(const char *path) {

    if(access(path, F_OK) != 0) {
        printf("file or folder '%s' not existed, exiting...\n", path);
        return -1;
    }

    printf("file or folder '%s' already existed\n", path);
    return 0;
}

int main(int argc, char **argv) {

    printf("\n");

    if (argc >= 2) {
        if ( ! strncmp(argv[1], "-h", 2) ) {
            print_usage(argv[0]);
            return -1;
        } else {
            file_or_folder = argv[1];
        }
    }

    int ret = judge_path_exist(file_or_folder);

    printf("\n");
    return ret;
}
