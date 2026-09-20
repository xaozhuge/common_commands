#!/bin/bash
if [ $# -ne 1 ]; then
    echo "用法: $0 人名"
    exit 1
fi
name="$1"
# 从map.txt查找uid

