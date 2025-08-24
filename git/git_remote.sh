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
# 推送代码的时候 
git push origin master 相当于 git push git@git.****.com:team/project.git master


# 5. 删除系统级别的 Git 凭证助手设置, 即 Git 不再在系统范围内使用任何 credential.helper 来记住用户名和密码
# 执行后, 如果没有在 --global 或 --local 层级单独配置, Git 在你推送(git push)或拉取(git pull)时, 就会每次都要求输入用户名和密码/令牌
sudo git config --system --unset credential.helper

# sudo: 以超级用户(root)身份执行命令, 因为 --system 级别的配置通常保存在 /etc/gitconfig 文件中, 需要管理员权限才能修改
# git config: Git 的配置命令, 用来读取和写入 Git 配置选项

# --system: 作用在 系统级别 的配置文件(通常是 /etc/gitconfig), 对整个系统上所有用户有效
# Git 的配置有三种层级:
# --system: 系统全局配置(对所有用户生效)
# --global: 用户级配置(当前用户主目录下 ~/.gitconfig)
# --local: 仓库级配置(当前仓库下 .git/config)
# 优先级是 ocal > global > system

# --unset: 删除一个配置项

