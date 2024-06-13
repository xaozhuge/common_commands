# 1. 所有用户生效, 当前用户生效
/etc/profile
~/.bash_profile


# 2. 编辑写入和echo写入
alias 'du1=du -sh * 2>/dev/null | sort -h'
echo "alias du1=du -sh * 2>/dev/null | sort -h" >> ~/.bash_profile
echo "alias du1=du -sh * 2>/dev/null | sort -h" >> /etc/profile
