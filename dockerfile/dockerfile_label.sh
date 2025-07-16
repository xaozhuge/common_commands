LABEL stage=builder_${APP_NAME}
# 1. 上述命令是 Dockerfile 中用于添加 镜像元数据(Label)的一行, 
# 同时使用了构建时变量 `ARG APP_NAME` 来动态生成 label 值
# 作用: 给镜像添加可查询的元信息(给镜像打标签以便识别或分层处理)
# 个人理解: 为生成的 Docker 镜像添加自定义的键值对标签


LABEL stage=builder_${APP_NAME}
# 2. `LABEL` 是 Dockerfile 中的指令, 用来向镜像添加键值对元数据
# `stage` 是标签名(key)
# `builder_${APP_NAME}` 是标签值


# 3. 作用
# 用 `docker inspect` 查看镜像标签
# 用于 CI/CD 中镜像筛选、分组
# 用于后续镜像构建的条件判断(比如自动化构建时区分微服务模块)
# CI/CD、分阶段构建标识、镜像识别


# 4. 查看镜像
docker inspect myservice:auth
res:
```
"Labels": {
  "stage": "builder_appname"
}
```

