# 1. 问题: 使用 https 拉取代码时, 每次都需要输入账号密码
# Linux 服务器 永久记住密码
# 配置后第一次拉代码: 输一次用户名 + 密码, 之后永远不用再输
git config --global credential.helper store

# 2. 密码存在 ~/.git-credentials, 服务器自己用非常安全
cat ~/.git-credentials

