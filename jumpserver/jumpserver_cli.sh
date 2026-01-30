# 1. 默认 配置文件 路径
/opt/jumpserver/config/config.txt

# 2. 使配置生效，启动、停止命令
# cd /alidata/jumpserver/jumpserver-offline-installer-v3.8.1-amd64
./jmsctl.sh start
./jmsctl.sh down

# 3. 配置N天后重新登录
SESSION_COOKIE_AGE=86400
SESSION_COOKIE_AGE=259200

# 4. 配置Mysql复用时间为 30 天
CONNECTION_TOKEN_REUSABLE_EXPIRATION=2592000
# 配置Mysql复用时间为 60 天
CONNECTION_TOKEN_REUSABLE_EXPIRATION=5184000
# 配置Mysql复用时间为 120 天
CONNECTION_TOKEN_REUSABLE_EXPIRATION=10368000

