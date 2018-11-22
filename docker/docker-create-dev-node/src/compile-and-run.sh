
source=$1
target=xycreator

    rm ${target}
    sudo rm /dev/kmsg
    gcc -o ${target} main.c
    time ./${target} ${source}

