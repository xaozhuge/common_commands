# 1. 查看安全登录日志(密码登录和密钥登录)
cat /var/log/secure* |grep "Accepted password"
cat /var/log/secure* |grep "Accepted publickey"

# 2. 记录并移除 "用户 from IP", 验证登录服务器的用户和IP
cat /var/log/secure* |grep "Accepted password"|grep -v "用户 from IP"



