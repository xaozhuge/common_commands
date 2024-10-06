# 1. 将当前代码暂存
git stash

# 2. 应用 git栈 最近的一条暂存
git stash pop

# 3. 列出 git栈 所有暂存
git stash list

# 4. 应用 git栈 列表中序号为0的暂存
git stash apply stash@{0}

# 5. 查看缓存列表序号为0的代码内容
git stash show -p stash@{0}

# 6. 将当前代码暂存, 备注为msg
git stash save 'msg'

# 7. 删除序号为0的暂存数据
git stash drop stash@{0}

# 8. 删除所有的暂存(注意是清空所有的stash)
git stash clear

