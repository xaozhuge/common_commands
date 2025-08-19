# 1. 作用: 在 uv 管理的虚拟环境中运行 Python, 并显示 Python 版本号
# 比直接运行 python --version 的好处是: 保证运行的环境可控, 不依赖系统全局 Python, 而是由 uv 自动管理的版本
uv run python --version

