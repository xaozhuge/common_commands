# 1. 查看 openclaw 当前版本
openclaw --version

# 2. 查看 可更新版本
openclaw update status

# 3. 停止 gateway（避免 EBUSY）
openclaw gateway stop

# 4. 官方内置 update
openclaw update

# 5. 重启服务 & 验证
openclaw gateway restart
openclaw --version

