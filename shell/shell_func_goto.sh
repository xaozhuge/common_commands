# 定义goto命令, 后跟任意文件路径, 自动切到它的文件夹
goto() {
  cd "$(dirname "$1")"
}

# 1. goto() { ... }

