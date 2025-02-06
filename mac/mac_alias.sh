# 1. 配置文件
# 所有用户生效
/etc/profile
# 当前用户生效
~/.bash_profile


# 2. 修改内容
# 编辑写入
alias 'du1=du -sh * 2>/dev/null | sort -h'
# echo写入
echo "alias du1=du -sh * 2>/dev/null | sort -h" >> ~/.bash_profile
echo "alias remote='/bin/bash ~/script/remote.sh'" >> ~/.bash_profile
echo "alias du1=du -sh * 2>/dev/null | sort -h" >> /etc/profile

# 3. source 加载
source /etc/profile
source ~/.bash_profile

