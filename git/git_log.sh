# 1. git log 是 Git 中用来查看项目历史提交的命令
# 包括每次提交的详细信息(如 commit ID、作者、日期、提交信息等)
git log

# 2. 查看最近的几个提交
git log -3
git log -n 3
git log --max-count=3

# 3. 获取最新的 commit ID
git log -1 --format=%H

# 4. 查看所有合并到 master 的提交
git log master --merges

