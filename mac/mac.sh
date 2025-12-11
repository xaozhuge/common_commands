# 1. 开启自动重启
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php@5.6.plist
# 2. 关闭自动重启
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php@5.6.plist
# 3. mac的环境变量加载顺序
/etc/profile /etc/paths ~/.bash_profile

# 4. 在Mac的Finder中显示隐藏文件的快捷命令
# 所有隐藏文件会立即显示出来, 再次按下相同快捷键可恢复隐藏状态

