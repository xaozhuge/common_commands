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

# 使用 tail -F 进行增量行读取
tail -F "$FILE_TO_MONITOR" | while read -r line; do
    if contains_keyword "$line"; then
        if [ -f "$isnotice" ]; then
            echo `date "+%Y-%m-%d %H:%M:%S"`" 已推送异常,退出..." >> checklog
            exit 0
        fi
        echo `date "+%Y-%m-%d %H:%M:%S"`" 异常" >> checklog
        `curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"$line\", \"remind\":\"\"}" $url`
        touch $isnotice
    else
        echo `date "+%Y-%m-%d %H:%M:%S"`" 正常" >> checklog
    fi
done

