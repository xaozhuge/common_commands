# 1. 判断变量 "CONTRAINERID" 是否为空
if [ -n "${CONTRAINERID}" ]; then
  sudo docker rm -f ${CONTRAINERID}
fi


