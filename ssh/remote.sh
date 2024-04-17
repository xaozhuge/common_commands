#!/bin/sh

server_list=~/Desktop/mysql/server_list.txt

# demo
# (1)|zzz|39.1.1.1|10.1.1.1|测试服务器

content=`cat $server_list`
echo "which server will you use?"
for info in $content; do
    array=(${info//|/ })
    echo "${array[0]}:${array[4]}(${array[2]}|${array[3]})"
    # (1):测试服务器(39.1.1.1|10.1.1.1)
done

echo
echo

