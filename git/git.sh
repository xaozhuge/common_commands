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

# 七. 将变动的内容提取到新的分支
# 1. 切换到新分支
git checkout 新分支A

# 2. 获取有变动的分支 变动分支B, 相对于 新分支A 的 diff, 但不应用在暂存区
git diff 新分支A..变动分支B | git apply
这条命令会把 变动分支B 上的所有代码改动(相对于 新分支A)应用到你的本地工作区中, 就像你手动改了一样

