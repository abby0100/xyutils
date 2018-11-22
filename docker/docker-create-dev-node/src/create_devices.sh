#!/bin/bash


function myecho {

    echo
    echo -e " ---> ${1}"
}

function check-permission {
    myecho 'check-permission'

    case $USER in
        root)
            echo 'You are root, continue...'
            ;;
        *)
            echo "You are $USER, please sudo -s"
#            exit
    esac
}

function make-dev-node {
    myecho 'make-dev-node'
#    echo 'https://blog.csdn.net/yinwei520/article/details/5789613'

    myecho 'check'
    ls -l --color /dev/kmsg

    myecho 'create'
    # crw------- 1 root   root        1,  11 1970-01-01 08:00 kmsg
    mknod -m 600 /dev/kmsg c 1 11
    #chmod
    #chown

    myecho 'check'
    ls -l --color /dev/kmsg
}

function main {

    check-permission
    make-dev-node 
}

# start from here
    main

    # # aic
    # ----------------------------------------------------------------
    # 4476cca2931b:/dev # ls -l |wc -l
    # 29
    # 
    # 4476cca2931b:/dev # ls -l
    # total 0
    # drwxr-xr-x 2 root   root       760 2018-11-21 01:32 __properties__
    # crw-rw-rw- 1 root   root   10,  51 2018-11-21 01:32 ashmem
    # crw-rw-rw- 1 root   root   10,  52 2018-11-21 01:32 binder0
    # crw-rw-rw- 1 root   root   10, 256 2018-11-21 01:32 binder1
    # crw-rw-rw- 1 root   root   10, 257 2018-11-21 01:32 binder2
    # crw-rw-rw- 1 root   root   10, 258 2018-11-21 01:32 binder3
    # crw-rw-rw- 1 root   root   10, 259 2018-11-21 01:32 binder4
    # crw-rw-rw- 1 root   root   10, 260 2018-11-21 01:32 binder5
    # crw-rw-rw- 1 root   root   10, 261 2018-11-21 01:32 binder6
    # crw-rw-rw- 1 root   root   10, 262 2018-11-21 01:32 binder7
    # crw-rw-rw- 1 root   root   10, 263 2018-11-21 01:32 binder8
    # crw-rw-rw- 1 root   root   10, 264 2018-11-21 01:32 binder9
    # drwxr-xr-x 3 root   root       300 2018-11-21 01:32 block
    # dr-xr-xr-x 6 system system       0 2018-11-18 03:13 cpuctl
    # dr-xr-xr-x 7 system system       0 2018-11-18 03:13 cpuset
    # lrwxrwxrwx 1 root   root        13 2018-11-21 01:32 fd -> /proc/self/fd
    # drwxrwx--- 2 root   system      40 2018-11-21 01:32 fscklogs
    # drwxr-xr-x 2 root   root        60 2018-11-21 01:32 graphics
    # drwxr-xr-x 2 root   root        60 2018-11-21 01:32 input
    # dr-xr-xr-x 7 root   root         0 2018-11-17 15:50 memcg
    # crw-rw-rw- 1 root   root    1,   3 2018-11-21 01:32 null
    # crw-rw-rw- 1 root   root    5,   2 2018-11-21 01:33 ptmx
    # drwxr-xr-x 2 root   root         0 2018-11-17 15:50 pts
    # drwxr-xr-x 2 root   root       340 2018-11-21 01:32 socket
    # drwxr-xr-x 5 system system     100 2018-11-21 01:32 stune
    # crw-rw-rw- 1 root   root    5,   0 2018-11-21 01:32 tty
    # crw-rw-rw- 1 root   root    1,   9 2018-11-21 01:32 urandom
    # drwxrwx--- 3 shell  shell       60 2018-11-21 01:32 usb-ffs

    # # android8
    # ----------------------------------------------------------------
    # xy4@xy4-OptiPlex-9020:~/workspace/git/aosp/android8$ cat device-nodes.log-android8
    # generic_arm64:/ # ls -l /dev/
    # 47
    # 
    # total 4
    # drwx--x--x 2 root   root           960 1970-01-01 08:00 __properties__
    # lrwxrwxrwx 1 root   root            18 1970-01-01 08:00 android_pipe -> /dev/goldfish_pipe
    # crw-rw-rw- 1 root   root       10,  59 1970-01-01 08:00 ashmem
    # crw-rw-rw- 1 root   root       10,  62 1970-01-01 08:00 binder
    # drwxr-xr-x 4 root   root           680 1970-01-01 08:00 block
    # crw------- 1 root   root        5,   1 1970-01-01 08:00 console
    # crw------- 1 root   root       10,  54 1970-01-01 08:00 cpu_dma_latency
    # dr-xr-xr-x 2 system system           0 1970-01-01 08:00 cpuctl
    # drwxr-xr-x 6 system system         120 1970-01-01 08:00 cpuset
    # crw------- 1 root   root       10, 203 1970-01-01 08:00 cuse
    # crw------- 1 root   root       10, 236 1970-01-01 08:00 device-mapper
    # crw-rw---- 1 root   audio      10,  57 1970-01-01 08:00 eac
    # -rw-r--r-- 1 logd   logd            24 1970-01-01 08:00 event-log-tags
    # lrwxrwxrwx 1 root   root            13 1970-01-01 08:00 fd -> /proc/self/fd
    # drwxrwx--- 2 root   system          40 2018-11-20 09:18 fscklogs
    # crw-rw-rw- 1 root   root        1,   7 1970-01-01 08:00 full
    # crw------- 1 root   root       10, 229 1970-01-01 08:00 fuse
    # crw-rw-rw- 1 system system     10,  56 1970-01-01 08:00 goldfish_pipe
    # drwxr-xr-x 2 root   root            60 1970-01-01 08:00 graphics
    # crw-rw-rw- 1 root   root       10,  61 1970-01-01 08:00 hwbinder
    # drwxr-xr-x 2 root   root           100 1970-01-01 08:00 input
    # crw------- 1 root   root       10,  63 1970-01-01 08:00 keychord
    # crw------- 1 root   root        1,  11 1970-01-01 08:00 kmsg
    # crw------- 1 root   root       10, 237 1970-01-01 08:00 loop-control
    # drwx------ 4 root   system          80 1970-01-01 08:00 memcg
    # crw------- 1 root   root       10,  51 1970-01-01 08:00 memory_bandwidth
    # crw------- 1 root   root       10,  53 1970-01-01 08:00 network_latency
    # crw------- 1 root   root       10,  52 1970-01-01 08:00 network_throughput
    # crw-rw-rw- 1 root   root        1,   3 1970-01-01 08:00 null
    # crw-rw---- 1 radio  vpn       108,   0 1970-01-01 08:00 ppp
    # crw------- 1 root   root       10,   1 1970-01-01 08:00 psaux
    # crw-rw-rw- 1 root   root        5,   2 2018-11-20 09:21 ptmx
    # drwxr-xr-x 2 root   root             0 1970-01-01 08:00 pts
    # lrwxrwxrwx 1 root   root            18 1970-01-01 08:00 qemu_pipe -> /dev/goldfish_pipe
    # crw-rw-rw- 1 root   root        1,   8 1970-01-01 08:00 random
    # drwxr-xr-x 2 root   root           420 1970-01-01 08:02 socket
    # drwxr-xr-x 6 system system         120 1970-01-01 08:00 stune
    # crw------- 1 root   root       10,  58 1970-01-01 08:00 sw_sync
    # crw-rw-rw- 1 root   root        5,   0 1970-01-01 08:00 tty
    # crw------- 1 root   root      204,  64 1970-01-01 08:00 ttyAMA0
    # crw-rw---- 1 system vpn        10, 200 1970-01-01 08:00 tun
    # crw-rw---- 1 uhid   uhid       10, 239 1970-01-01 08:00 uhid
    # crw-rw---- 1 system bluetooth  10, 223 1970-01-01 08:00 uinput
    # crw-rw-rw- 1 root   root        1,   9 1970-01-01 08:00 urandom
    # crw-rw-rw- 1 root   root       10,  60 1970-01-01 08:00 vndbinder
    # crw-r--r-- 1 root   root       10,  55 1970-01-01 08:00 xt_qtaguid
    # crw-rw-rw- 1 root   root        1,   5 1970-01-01 08:00 zero

