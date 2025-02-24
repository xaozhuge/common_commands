# 一、查看用户、邮箱
# 1. 查看当前用户 
git config user.name
# 2. 查看当前邮箱 
git config user.email


# 二、修改用户、邮箱
# 1. 修改当前用户 
git config --global user.name "用户名"
git config --local user.name "用户名"
# 2. 修改当前邮箱 
git config --global user.email "邮箱" 
git config --local user.email "邮箱"

# 三、git默认追踪
# 1. 查看是否开启权限追踪
cat .git/config | grep filemode

# 2. 不追踪权限
git config core.filemode false

# 六、取消对文件的追踪,使用 git rm --cached
git rm --cached 2024-10-06.log

