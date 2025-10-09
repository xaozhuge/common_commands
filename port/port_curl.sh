# 1. 验证端口是否开放
curl -sS --connect-timeout 1 ip:端口
# 案例
curl -sS --connect-timeout 1 127.0.0.1:22

