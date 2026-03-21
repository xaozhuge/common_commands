# 1. 重启网关
openclaw gateway restart
# 后台启动网关守护进程
openclaw gateway start
# 终止网关进程
openclaw gateway stop
# 查看网关运行状态
openclaw gateway status
# 查看当前版本

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
打开网站 https://clawhub.ai/steipete/mcporter 下载 zip 包
# 然后让openclaw 安装本地的技能
安装技能  ~/Downloads/mcporter-1.0.0.zip

# 14. 模拟运行清理旧的、不活跃的sessions
# --dry-run: 模拟运行 - 只显示会删除哪些 sessions，实际不执行删除
openclaw sessions cleanup --dry-run

# 真正执行清理, 清理（删除）旧的、不活跃的 sessions
openclaw sessions cleanup

# 15. 模型列表
openclaw models list

# 16. 测试模型（真实发请求，会消耗Token产生费用）
clawdbot models status --probe

# 17. 网易的有道龙虾
https://lobsterai.youdao.com/#/download-list

