# 1. 命令行的curl代理到charles
export https_proxy=http://127.0.0.1:8888
export http_proxy=http://127.0.0.1:8888

# 2. 取消代理
unset https_proxy
unset http_proxy

