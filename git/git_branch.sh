# 1. 找到含有关键字的远程/本地分支
git branch -r|awk -F '/' '{print $2"/"$3}'|grep keywords
git branch |awk -F '/' '{print $1"/"$2}'|grep keywords

# 2. 批量删除含有关键字的远程/本地分支
git branch -r|awk -F '/' '{print $2"/"$3}'|grep keywords|head -n 80|xargs git push origin --delete
git branch |awk -F '/' '{print $1"/"$2}'|grep keywords|head -n 80|xargs git branch -D

# 3. 查看远程分支
git branch -a

# 4. 查看本地分支
git branch

# 5. 创建分支
git branch feature/YYYYmmdd_name_func
git branch hotfix/YYYYmmdd_name_func
# 创建分支并切换到该分支
git checkout -b hotfix/YYYYmmdd_name_func

# 6. 切换分支
git checkout hotfix/YYYYmmdd_name_func

# 7. 删除本地分支
git branch -D hotfix/YYYYmmdd_name_func
# 删除远程分支
git push origin --delete feature-branch

# 8. 查看本地分支以及提交信息
git branch -v
# 可以看到是否存在远程分支
git branch -vv

# 9. 将指定分支合并到当前分支
git merge hotfix/YYYYmmdd_name_func

# 10. 清理本地仓库中已不存在于远程仓库的分支
# 当远程仓库中的分支被删除后, 本地仓库可能仍然保留这些分支的引用, 这会导致本地分支列表与远程仓库不一致
git remote prune 远程地址的别名
eg: git remote prune origin

