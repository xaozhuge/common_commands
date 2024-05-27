# 1. 判断变量 "CONTRAINERID" 是否为空
if [ -n "${CONTRAINERID}" ]; then
  sudo docker rm -f ${CONTRAINERID}
fi

# 2. 判断前置命令是否不等于0
if [ $? -ne 0 ]; then
  echo "有问题，构建失败"
  exit 1
fi

# 3. 判断前置命令是否等于0
[ $? -eq 0 ] && echo "success" || echo "fail"

