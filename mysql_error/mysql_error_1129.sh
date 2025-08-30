# 1. 错误信息
error: Error 1129: Host '192.168.0.1' is blocked because of many connection errors; 
unblock with 'mysqladmin flush-hosts'
# 说明 MySQL 把来自 192.168.0.1 这台客户端机器的连接屏蔽掉了

# 2. 错误原因
# 2.1 连接失败次数过多
# MySQL 有一个参数 max_connect_errors(默认 100), 当某个主机连续连接 MySQL 出现错误(比如网络中断、连接没正常关闭、认证失败)次数超过这个阈值, 就会自动封锁该主机

# 2.2 客户端频繁错误地尝试连接(错误密码、连接未释放等) 导致错误计数快速增加

# 3. 解决办法-登录mysql的cli
FLUSH HOSTS;

# 4. 说明
# Error 1129 的核心意思是 MySQL 把 客户端 IP 封了, 因为它连接失败太多次, 可以用 FLUSH HOSTS 解封

