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

