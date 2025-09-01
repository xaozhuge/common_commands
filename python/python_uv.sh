# 1. 作用: 在 uv 管理的虚拟环境中运行 Python, 并显示 Python 版本号
# 比直接运行 python --version 的好处是: 保证运行的环境可控, 不依赖系统全局 Python, 而是由 uv 自动管理的版本
uv run python --version

# uv: 是一个快速的 Python 包和虚拟环境管理工具, 由 Astral 开发(类似于 pip + venv + poetry 的结合体, 性能更高), 
# 可以运行脚本、管理依赖、创建隔离环境

# run子命令: uv run 会在一个受控的、自动管理的虚拟环境中运行某个命令
# 如果需要的解释器或依赖包没有, 会临时解析并下载, 从而避免“环境污染”

# python: 这里表示要运行 python 可执行文件(即 Python 解释器)

# --version: 这是传给 python 的参数, 不是 uv 的参数
# 它的作用是输出 Python 的版本信息

# 2. 让 uv 下载并安装 Python 3.11, 并且把它加入到 uv 的可用 Python 解释器列表里
# uv 会自动下载并安装最新的 Python 3.11.x 版本
uv python install 3.11

# 3. 查看已安装版本
uv python list

# 4. 卸载某个版本
uv python uninstall 3.11

# 5. 会在当前项目中固定 Python 版本为 3.11
# 之后运行 uv run、uv sync 等命令时, 会自动使用 Python 3.11
uv python pin 3.11

# 6. 取消固定版本
uv python unpin 

# 7. 打印出 在 uv 环境中可见的环境变量
# env 是要运行的命令(这里其实就是 Python 的 env 工具)
# uv run env ≈ 在 uv 提供的虚拟环境中运行 env
uv run env

# 8. 安装 uv
curl -LsSf https://astral.sh/uv/install.sh | sh

