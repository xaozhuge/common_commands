# 1. 列出所有运行的 Docker 容器，过滤出名称完全匹配 ${PACKAGE_NAME} 的容器，只显示这些容器的容器 ID
docker ps --filter "name=^${PACKAGE_NAME}$" --format "{{.ID}}"
# 1.1 docker ps 命令用于列出当前运行的 Docker 容器
# 1.2 --filter "name=^${PACKAGE_NAME}$" 只显示名称完全匹配 ${PACKAGE_NAME} 的容器，name：这是过滤器的关键字，表示按容器名称进行过滤
# 1.3 --format 选项用于指定输出的格式。{{.ID}} 是一个 Go 模板表达式，用于只显示容器的 ID



