# 1. dig: Linux/macOS/Windows (WSL) 标准 DNS 查询工具, 用来向 DNS 服务器查询解析记录

# 2. `_cert` 是主机前缀
# _cert 证书机构的域名所有权校验专用 TXT 记录前缀, 申请 SSL 证书时需要添加这条 TXT 解析完成域名验证

# 3. TXT: 指定查询记录类型为 TXT 文本记录, 证书验证、SPF、DKIM、DMARC 都用 TXT 记录

# 4. +short: 精简输出参数
# 去掉 DNS 报文头部、服务器信息、TTL、查询耗时等冗余内容

