#!/bin/bash
control=$1
action=$2
date=$(date +%Y%m%d)
logpath=/alidata/log/php/script/${control}/
count=$(ps aux|grep php|wc -l)

if [[ $count -gt 100 ]]; then
	echo "脚本超载运行" >> ${logpath}${action}-${date}.log
	exit;
fi

if [[ ! -d $logpath ]]; then
	mkdir -p $logpath
fi

if [[ "$time" > "02:00:00" ]] && [[ "$time" < "04:00:00" ]]; then
	echo '当前时间段数据库正在备份不提供脚本服务'  >> ${logpath}${action}-${date}.log 2>&1
fi

/alidata/server/php/bin/php /alidata/www/script/api_script/index.php ${control}/${action} >> ${logpath}${action}-${date}.log 2>&1

# 定时任务案例
# 1 * * * * /alidata/www/script/thinkphp_script.sh testcon testfunc

