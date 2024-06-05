#!/bin/sh

# 要监控的文件路径
FILE_TO_MONITOR=""
# 运行log
checklog=/alidata/canal/script/check.log
# webhook,用于通知
url=""
# 校验是否已经通知
isnotice=/alidata/canal/script/isnotice

# 定义关键字数组
KEYWORDS=(" ERROR ")

# 函数：检查行是否包含关键字
contains_keyword() {
    local line="$1"
    for keyword in "${KEYWORDS[@]}"; do
        if [[ "$line" == *"$keyword"* ]]; then
            return 0  # 找到关键字，返回 true
        fi
    done
    return 1  # 没有找到关键字，返回 false
}
