# git 将已有目录提交到项目的其他分支

# 1. 初始化本地git仓库(只执行一次)
git init

# 2. 添加所有文件到暂存区
git add .

# 3. 提交本地, 写commit备注
git commit -m "init: 初始化全部文件"

# 4. 创建并切换到你想要的分支
git checkout -b server/ip

# 5. 关联远端仓库(替换成你的git仓库地址)
git remote add origin git@xxx.git

# 6. 推送这个不存在的分支到远端服务器
git push -u origin server/ip

# 7. 配置信息,用来显示,不校验
git config user.name "serverip"

