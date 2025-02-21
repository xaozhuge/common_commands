# 一. git config 三个层级
# 1. 系统级配置(System Level)
# 系统级配置是全局性的, 适用于所有用户和所有项目. 它通常存储在系统的 Git 配置文件中
/etc/gitconfig

# 2. 全局级配置(Global Level)
# 全局级配置是针对当前用户的, 适用于该用户的所有项目. 它存储在用户的主目录下的.gitconfig文件中
/home/zzz/.gitconfig

# 3. 项目级配置(Local Level)
# 项目级配置是针对单个项目设置的, 只适用于当前项目的仓库. 它存储在项目目录下的.git/config文件中
.git/config

# 4. Git配置的优先级从高到低依次为
项目级配置 (Local Level)  : 覆盖 全局级配置 和 系统级配置
全局级配置 (Global Level) : 覆盖 系统级配置
系统级配置 (System Level) : 默认配置, 优先级最低

# 5. 查看系统级配置
git config --system --list

