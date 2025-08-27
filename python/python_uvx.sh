# 1. uvx 说明
# 1.1 uvx 是 uv 的一个子命令, 类似于 npx(Node.js 的工具)
# 1.2 uvx作用: 临时运行某个 Python 包或命令, 不需要手动安装到系统环境里
# 1.3 uvx: 会在隔离的环境里下载并运行指定工具, 然后退出时不会污染全局环境

# 2. 用 uv 的机制来运行 python --version
# 可以保证即使本机没有全局安装 python, 只要 uv 能拉到合适的解释器, 也能运行
uvx python --version

