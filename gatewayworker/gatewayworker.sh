# 1. 启动服务并将其作为守护进程运行
# start.php 是 GatewayWorker 的启动文件
# -d 代表以守护进程 (daemon) 的方式启动. 意味着该服务将会在后台运行, 不会占用当前的终端窗口
php GatewayWorker/start.php start -d

# 2. 停止当前运行的服务并重新启动为守护进程
php GatewayWorker/start.php restart -d

# 3. 停止当前运行的服务
php GatewayWorker/start.php stop

# 4. 重新加载业务代码, 不会断开当前用户的连接, 适合在更新代码后进行无缝更新
php GatewayWorker/start.php reload

# 5. 展示当前服务的运行状态, 例如运行的进程数和进程 ID
php GatewayWorker/start.php status

# 6. 显示所有的客户端连接信息, 如客户端 IP 地址和端口号
php GatewayWorker/start.php connections

