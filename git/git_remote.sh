# 1. 查看远程地址的别名(远程主机名)
git remote
res: origin

# 2. 清理本地仓库中已不存在于远程仓库的分支
# 当远程仓库中的分支被删除后, 本地仓库可能仍然保留这些分支的引用, 这会导致本地分支列表与远程仓库不一致
git remote prune 远程地址的别名
eg: git remote prune origin

# 3. 修改git的仓库地址
git remote set-url origin git@git地址

# 4. origin 是 git 为你默认创建的指向这个远程代码库的标签
git remote -v
res: origin	git@git.****.com:team/project.git (fetch)
res: origin	git@git.****.com:team/project.git (push)
# 拉取代码的时候
git pull origin master 相当于 git pull git@git.****.com:team/project.git master

