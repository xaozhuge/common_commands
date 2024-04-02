一、
1、> /dev/null 实际是  1>/dev/null 的缩写，表示标准输出重定向到空设备文件
2、1表示stdout 标准输出，系统默认值是1
3、2表示stderr 标准错误
4、2>&1 表示 2的输出重定向等同于1

# 二、清理日志，并保证继续产生日志
sudo sh -c 'echo "" > /var/log/cron'
