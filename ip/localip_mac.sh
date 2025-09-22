#!/bin/bash

port=22
timeout=1  # 超时时间(秒)

echo "开始扫描服务器端口..."
echo "========================="

# 循环1-254
for i in {1..254}; do
	server="172.16.1.${i}"
    
    # 利用 curl 判断端口是否开启
    res=`curl -sS --connect-timeout $timeout $server:$port 2>&1`

	if echo "$res" | grep -q "Timeout was reached"; then
		echo "服务器IP: $server 服务器未开放端口"
	else
		res=`nc -vz $server $port 2>&1`

		# 使用 nc 判断端口是否有服务运行
		if echo "$res" | grep -q "succeeded"; then
			echo "服务器IP: $server succeeded"
		else
			echo "服务器IP: $server Connection refused"
		fi
	fi
done

echo "========================="
echo "扫描完成"

