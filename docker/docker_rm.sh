# 1. rm: remove 的缩写, 表示删除一个或多个容器
docker rm ${CONTAINERID}

# 2. -f: --force的简写, 强制删除运行中的容器, 它会先停止容器, 然后删除
docker rm -f ${CONTAINERID}

# 3. ${CONTAINERID}: 占位符, 需要替换为实际的容器ID或容器名称
docker rm -f ${CONTAINERID}

