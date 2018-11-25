
source=$1
target=xyremove

    rm ${target}
    gcc -o ${target} main.c xyutils.c
    time ./${target} ${source}

