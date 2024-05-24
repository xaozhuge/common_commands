# 1. 只显示当前正在运行的容器
docker ps

# 2. 显示所有容器，不论其状态如何
docker ps -a 

# 3. 指定输出的格式，自定义输出的信息。{{.ID}} 是一个 Go 模板表达式
# 例如 容器的ID 容器使用的镜像名称 容器的当前状态 容器的名称
# 例如 启动容器的命令 容器的创建时间 容器暴露的端口
docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"
docker ps --format "{{.Command}}\t{{.CreatedAt}}\t{{.Ports}}"

# 4. 过滤显示的容器列表，例如 只显示名称完全匹配 ${PACKAGE_NAME} 的容器，其中 name：这是过滤器的关键字，表示按容器名称进行过滤
docker ps --filter "name=^${PACKAGE_NAME}$"





