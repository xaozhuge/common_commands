# 1. 部署定时任务，并生成日志
32 16 02 01 * /alidata/source.sh >> /alidata/tmp.log 2>&1
# 2. 以某个用户的身份执行脚本
sudo -u www /alidata/server/php73/bin/php
# 3. root部署(方便管理), 以www运行(避免权限问题)
* * * * * sudo -u www /alidata/server/php73/bin/php

