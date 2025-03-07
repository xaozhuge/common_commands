#!/bin/sh

# 1. 定义备份路径
path='/alidata/www/crontab/'

# 2. 定义日期
time=`date +%Y%m%d`

# 3. 备份crontab
crontab -l >> $path$time.log

