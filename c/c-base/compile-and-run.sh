
source=$1
target=xybase

    rm ${target}
    gcc -o ${target} main.c xyutils.c
    time ./${target} ${source}

