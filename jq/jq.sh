# 1. jq 是一个轻量级且功能强大的命令行JSON处理器, 专门用于解析、查询、转换和格式化 JSON 数据

# 2. CentOS安装 jq
sudo yum install -y jq
# 验证 jq版本
jq --version
res: jq-1.6

# 3. 提取 logfile.log 的json, 并显示出json中的url和req_time
grep -o '{.*}' logfile.log | jq -r '.url, .req_time'

