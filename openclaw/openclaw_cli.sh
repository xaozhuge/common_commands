# 1. 重启网关
openclaw gateway restart
# 后台启动网关守护进程
openclaw gateway start

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

