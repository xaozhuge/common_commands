# 1. -i 选项是 --interactive 的缩写, 作用是让容器的 标准输入(STDIN) 保持打开状态, 即使没有附加终端, 它也会继续接收输入
docker run -i

# 2. 默认情况: 如果不加 -i, 启动容器后, 当没有输入时, STDIN 会被关闭
# 加上 -i : 容器会一直保持标准输入流可用, 这样就可以在运行过程中输入命令或数据
docker run -i

# 3. 一般来说, -i通常会和-t 一起使用(即-it), 这样不仅保持输入, 还会分配一个伪终端(TTY), 方便交互式操作, 例如进入shell
docker run -i
docker run -it

# 4. 案例: 交互式启动容器
# -i: 保持 STDIN 打开
# -t: 分配终端
# 结果: 进入容器的交互式 Bash 环境
docker run -it ubuntu bash

# 5. 案例: 只用-i(无终端)
# 在命令行中输入内容, cat 会把输入直接回显, 直到按Ctrl+D结束输入
docker run -i ubuntu cat

# 6. 总结
# -i: 保持输入流开启

