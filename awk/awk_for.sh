# 1. 从i=1开始, 循环直到i等于NF, 也就是循环遍历所有字段, i++表示在每次循环结束后,i的值增加1
awk -F ":" '{for(i=1;i<=NF;i++) print $i}'