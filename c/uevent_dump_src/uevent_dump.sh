#!/bin/bash

target=uevent_dumper

    gcc -W -o ${target} main.c uevent_dump.c 

    echo 'dump uevent'
    ./${target}
    
