#!/bin/sh

echo ""
echo '服务器说明[公网IP/内网IP]' 
ssh -tt 服务器账号@服务器IP 'sudo /alidata/server/php/bin/php /root/script/checkdb.php;\
echo -n "php-fpm:";ps aux|grep php-fpm|wc -l;\
echo -n "负载:";w|grep load;\
echo -n "内存:";free|grep Mem|awk "{print \$3/\$2 * 100}";\
echo -n "CPU:";top -bn1| grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk "{print 100 - \$1}"; \
echo -n "带宽:"; sudo iftop -i eth1 -t -s 2 -nN  2>&1|grep "send rate";\
echo -n "带宽:"; sudo iftop  -t -s 2 -nN  2>&1 | egrep "=>|<="|xargs -l2 |awk "{print \$8,\$4,\$5,\$6}"|grep -v "192.168.0";\
echo;'
echo ''

# 1. 注意
# 1.1 jenkins里注意结尾的 ; 和 \
# 1.2 注意 ssh 单引号包双引号, 还是双引号包单引号
# 1.3 注意 ssh 里 \$

# 2. echo -n 换行问题
echo -n "负载:";w|grep load;

# 3. 检查db
sudo /alidata/server/php/bin/php /root/script/checkdb.php

# 4. 统计php-fpm数
ps aux|grep php-fpm|wc -l

# 5. 统计负载
w|grep load

# 6. 统计内存
free|grep Mem|awk '{print $3/$2 * 100}'

