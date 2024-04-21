# 1. > /dev/null 说明
> /dev/null 实际是  1>/dev/null 的缩写，表示标准输出重定向到空设备文件
1表示stdout 标准输出，系统默认值是1
2表示stderr 标准错误

# 2. 2>&1说明
2>&1 表示 2的输出重定向等同于1

# 3. 清理日志，并保证继续产生日志
sudo sh -c 'echo "" > /var/log/cron'

# 4、判断上条执行的命令
[ $? -eq 0 ] && echo "success" || echo "fail"


