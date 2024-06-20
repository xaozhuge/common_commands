# 1. 查看安全登录日志(密码登录和密钥登录)
cat /var/log/secure* |grep "Accepted password"
cat /var/log/secure* |grep "Accepted publickey"

