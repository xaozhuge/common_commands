#!/bin/bash
source /etc/profile

cd /data/;
nowtime=`date "+%Y-%m-%d %H:%M:%S"`
log=runtimelog
pid=$(ps aux|grep "python3 main.py"|grep -v 'grep'|awk '{print $2}')


if [[ -n "$pid" ]]; then
    echo ${nowtime}" 发现 '$pid' 存在, 程序运行中" >> $log
    echo "" >> $log
    exit
fi

nohup python3 main.py >> nohup.out 2>&1 &

echo ${nowtime}" 程序启动" >> $log
echo  >> $log
