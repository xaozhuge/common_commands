# 1. dmctl
dmctl 是 TiDB Data Migration (DM) 工具的命令行客户端, 用于管理 DM 集群和数据同步任务

# 2. 执行 dmctl 的 2种方式
# 2.1 直接执行
dmctl --master-addr 192.168.0.1:8260 [command]

# 2.2 进入交互式后执行
dmctl --master-addr 192.168.0.1:8260
# 交互式下执行
[command]

# 3. 交互式下-停止任务
stop-task task_name

# 4. 交互模式下-查看任务状态
query-status task_name

# 5. 交互模式下-开启任务
start-task 绝对路径下的yaml文件
# 例如
start-task /home/tidb/config/taskname.yaml

