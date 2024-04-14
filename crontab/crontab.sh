# 1. 部署定时任务，并生成日志
32 16 02 01 * /alidata/source.sh >> /alidata/tmp.log 2>&1
# 2. 以某个用户的身份执行脚本
sudo -u www /alidata/server/php73/bin/php

