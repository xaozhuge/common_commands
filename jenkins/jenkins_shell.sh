# 1. 检查前置命令是否失败，如果失败, 中断 Jenkins 构建
if [ $? -ne 0 ]; then
  echo "有问题，构建失败"
  exit 1
fi


