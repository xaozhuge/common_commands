# 1. 安静拉取, 仅显示关键信息
git pull --quiet
git pull -q

# 以下信息默认显示 是为了debug和网络传输信息显示, 不影响实际pull行为
# 会显示以下信息
x files changed, y insertions(+)

# 不再显示以下信息
# Git 正在从远程仓库统计对象数
remote: Counting objects
# Git 正在压缩传输包
remote: Compressing objects

