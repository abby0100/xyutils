
source=$1
target=xyaccessor

    rm ${target}
    gcc -o ${target} main.c
    time ./${target} ${source}

#    readme
#    [Usage]
#            ./xyaccessor <file_or_folder_path>
