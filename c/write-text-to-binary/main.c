#include <stdio.h>
#include <string.h>

#define BUF_LEN 1024
#define NEW_FILE    "new.bin"

char *text_file_path = "dump_all.txt";

void print_usage(char *command) {

        printf("[Usage]\n\t%s <text_file_path>\n\n", command);
}

int write_bin(char *ctx, int size) {

    printf("[write_bin] ctx\t%s\n", ctx);
    if (ctx == NULL) {
        return -1;
    }

    FILE *fp = NULL;
    if((fp = fopen(NEW_FILE, "a+b")) == NULL) {
        printf("coldboot_from_dump failed to open %s\n", NEW_FILE);
        return -1; 
    }  

    int nwrite = 0;
    while (*ctx) {
        if (*ctx == ' ') {
            fwrite("\0", 1, 1, fp);
        } else {
            nwrite = fwrite(ctx, 1, 1, fp);
        }

        ctx++;
    }

    fclose(fp);
    return 0;
}


int write_text_to_bin(char *path) {

    printf(" ---> write_text_to_bin file\t%s\n", path);
    if (path == NULL) {
        return -1;
    }

    FILE *fp = NULL;
    if((fp = fopen(path, "r")) == NULL) {
        printf("coldboot_from_dump failed to open %s\n", path);
        return -1; 
    }  

    char msg_buf[BUF_LEN];
    memset(msg_buf, 0, sizeof(msg_buf));

    while(fgets(msg_buf, sizeof(msg_buf), fp) != NULL) {
        write_bin(msg_buf, strlen(msg_buf) -1);
        memset(msg_buf, sizeof(msg_buf), 0); 
    }

    fclose(fp);
    return 0;
    
}

int main(int argc, char **argv) {

    printf("\n");

    if (argc >= 2) {
        if ( ! strncmp(argv[1], "-h", 2) ) {
            print_usage(argv[0]);
            return -1;
        } else {
            text_file_path = argv[1];
        }
    }

    int ret = write_text_to_bin(text_file_path);

    printf("\n");
    return 0;
}
