# 1. 查看远程地址的别名(远程主机名)
git remote
res: origin

# 2. 清理本地仓库中已不存在于远程仓库的分支
# 当远程仓库中的分支被删除后, 本地仓库可能仍然保留这些分支的引用, 这会导致本地分支列表与远程仓库不一致
git remote prune 远程地址的别名
eg: git remote prune origin

