#/bin/bash

cd /data/;

nowtime=`date "+%Y-%m-%d %H:%M:%S"`
log=runtimelog
pid=$(ps aux|grep "python3 main.py"|grep -v 'grep'|awk '{print $2}')

if [[ -z "$pid" ]]; then
    echo ${nowtime}" 未发现 '$pid' 存在, 程序未运行" >> $log
    echo "" >> $log
    exit
fi
