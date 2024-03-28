# 1. 命令行开启代理
export all_proxy=socks5://127.0.0.1:7890
# 2. 取消代理
unset all_proxy
# 3. 使用socks5的代理，查看IP
curl --socks5 127.0.0.1:7890 http://cip.cc
curl --socks5 127.0.0.1:7890 myip.ipip.net


