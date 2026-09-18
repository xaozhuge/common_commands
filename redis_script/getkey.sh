#!/bin/bash
if [ $# -ne 1 ]; then
    echo "用法: $0 人名"
    exit 1
fi
name="$1"
# 从map.txt查找uid
uid=$(awk -v n="$name" '$1==n{print $2}' map.txt)
if [ -z "$uid" ]; then
    echo "找不到人名 $name 对应的uid"
    exit 1
fi
date=$(date +%Y%m%d)

