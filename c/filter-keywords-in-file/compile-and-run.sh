
source=$1
target=xyfilter

    rm ${target}
    gcc -o ${target} main.c filter.c xyutils.c
    time ./${target} ${source}

