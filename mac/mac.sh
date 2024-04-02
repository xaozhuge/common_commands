# 1. 开启自动重启
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php@5.6.plist
# 2. 关闭自动重启
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php@5.6.plist
# 3. mac的环境变量加载顺序
/etc/profile /etc/paths ~/.bash_profile
