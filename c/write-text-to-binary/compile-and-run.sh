
source=$1
target=xywriter

    rm ${target}
    gcc -o ${target} main.c
    time ./${target} ${source}

#    readme
#    [Usage]
#            ./xywriter <text_file_path>

