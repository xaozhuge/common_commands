# 1. 启动服务并将其作为守护进程运行
# start.php 是 GatewayWorker 的启动文件
# -d 代表以守护进程 (daemon) 的方式启动. 意味着该服务将会在后台运行, 不会占用当前的终端窗口
php GatewayWorker/start.php start -d

# 2. 停止当前运行的服务并重新启动为守护进程
php GatewayWorker/start.php restart -d

