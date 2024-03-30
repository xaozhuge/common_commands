一、查看用户、邮箱
1. 查看当前用户 
git config user.name
2. 查看当前邮箱 
git config user.email


二、修改用户、邮箱
1. 修改当前用户 
git config --global user.name "用户名"
git config --local user.name "用户名"
2. 修改当前邮箱 
git config --global user.email "邮箱" 
git config --local user.email "邮箱"

三、git默认追踪
1、查看是否开启权限追踪
cat .git/config | grep filemode

2、不追踪权限
git config core.filemode false

四、删除、更新 不存在的远程分支
1、查看远程地址的别名
git remote

2、删除、更新 不存在的远程分支
git remote prune 远程地址的别名
git remote prune origin

# 五、修改git的仓库地址
git remote set-url origin git@git地址


