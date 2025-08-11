# 1. -i 选项是 --interactive 的缩写, 作用是让容器的 标准输入(STDIN) 保持打开状态, 即使没有附加终端, 它也会继续接收输入
docker run -i

# 2. 默认情况: 如果不加 -i, 启动容器后, 当没有输入时, STDIN 会被关闭
docker run -i

