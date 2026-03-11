# 1. 重启网关
openclaw gateway restart
# 后台启动网关守护进程
openclaw gateway start
# 终止网关进程
openclaw gateway stop
# 查看网关运行状态
openclaw gateway status

# 2. 以命令行方式启动
openclaw tui

# 3. 以网页的形式打开
openclaw dashboard
# 输出网页打开的地址, 浏览器不打开
openclaw dashboard --no-open

# 4. 重新配置
openclaw onboard

# 5. 显示申请的设备列表
openclaw devices list

# 6. 通过指定的设备
openclaw devices approve <device-id>

# 7. openclaw的配置文件 openclaw.json
sudo vi ~/.openclaw/openclaw.json
sublime ~/.openclaw/openclaw.json

# 8. 查看 gateway 的日志
tail -f ~/.openclaw/logs/gateway.log

# 9. skills的地址
https://clawhub.ai/

# 10. 检查配置文件有没有问题, 有问题会直接报错
openclaw config validate

# 11. 生成默认工作区目录 ~/.openclaw/
openclaw init

# 12. 重置配置文件（保留会话和凭证） 
openclaw reset --scope config

# 13. openclaw 安装 mcporter
clawhub install mcporter
# 如果频率限制, 下载zip包

