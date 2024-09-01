#/bin/bash

cd /data/;

nowtime=`date "+%Y-%m-%d %H:%M:%S"`
log=runtimelog
pid=$(ps aux|grep "python3 main.py"|grep -v 'grep'|awk '{print $2}')

