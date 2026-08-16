#!/bin/sh
# 关闭指定的程序
pkill -9 -f "程序"

cd $HOME/目录/bin

"程序的启动命令"

sleep 2

pid=$(ps aux|grep '程序'|grep -v grep|awk '{print $2}')

port=$(sudo lsof -i -n -P|grep LISTEN|grep '程序'|awk -F ':' '{print $2}')

echo "启动成功, pid是"$pid ",监听端口是" $port "  "

