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
