# 一、说明
# 1. Docker 默认数据根目录（通常是 /var/lib/docker）下的核心子目录
# 这些目录分别存储了 Docker 引擎运行时的不同组件数据
 
# 二、核心数据存储目录
# 1. buildkit
# 构建缓存与数据
# 存储 BuildKit（Docker 的镜像构建工具）的缓存、中间文件和构建上下文。清理此目录可释放构建缓存空间

# 2. containers
# 容器运行时数据目录
# 存放所有运行 / 停止容器的配置、日志、hostname、hosts、resolv.conf 等元数据
# 每个容器一个子目录，以容器 ID 命名。

