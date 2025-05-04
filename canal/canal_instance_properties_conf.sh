# 1. 数据库地址
canal.instance.dbAddress = 127.0.0.1:3306

# 2. 数据库用户名
canal.instance.dbUsername = canal

# 3. 数据库密码
canal.instance.dbPassword = canal

# 4. canal server唯一标识
canal.id = 1

# 5. canal server监听的IP和端口
canal.port = 11111

# 6. 订阅的过滤规则(正则表达式)
canal.instance.filter.regex = .*\\..*

# 7. 配置MySQL slaveId, 不能与masterId重复
canal.instance.mysql.slaveId = 1234

