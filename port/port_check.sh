#!/bin/bash

# 定义要扫描的服务器列表
servers=("127.0.0.1" "172.16.1.1")

# 定义要扫描的端口
port=3306

# 定义超时时间(秒)
timeout=1

# 定义结果输出文件
path=output.txt

echo "开始扫描服务器端口..."
echo "========================="

for server in "${servers[@]}"; do
    res=`curl -sS --connect-timeout $timeout $server:$port 2>&1`

    if echo "$res" | grep -q "Connection timed out"; then
  	    echo "服务器IP: $server 服务器未开放端口" >> $path
	else
        res=`nc -vz $server $port 2>&1`

        if echo "$res" | grep -q "succeeded"; then
            echo "服务器IP: $server succeeded" >> $path
        else
            echo "服务器IP: $server Connection refused" >> $path
        fi
	fi
done

echo "========================="
echo "扫描完成"
