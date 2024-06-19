# 1. 由于 同一个IP 连接ftp服务器过多，出现如下错误
[pid 10396] CONNECT: Client "IP", "Connection refused: too many sessions for this address."
# 1.1 查看问题
cat /var/log/vsftpd.log
# 1.2 修改配置文件 max_per_ip=4
vi /etc/vsftpd/vsftpd.conf
# 1.3 重新启动ftp服务
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

