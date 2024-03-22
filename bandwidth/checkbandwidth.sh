#!/bin/bash

#变量设置
nowtime=`date "+%Y-%m-%d %H:%M:%S"`
interface=eth0
numtime=5
logpath=runtime-bandwidth.log
tmplog=/tmp/tmp-bandwidth.log


 (/usr/sbin/iftop -o 2s -tnN -s $numtime -i $interface -L 4096 2>&1 | egrep "=>|<="\
| awk '{ if ($3 == "=>") {print $2" "$3" "$4} else {print $1" "$2" "$3}}') | xargs -l2 | awk '{print $3,$1,$2,$4":"$6,$1,$5,$4}' | awk -F ":" '{for(i=1;i<=NF;i++) print $i}' > $tmplog

echo  >> $logpath
echo $nowtime >> $logpath
echo '出网带宽' >> $logpath
cat $tmplog|grep '=>' >> $logpath
echo  >> $logpath