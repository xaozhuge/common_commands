# 1. 扩容分区
# growpart 是一个用于扩展(增加)分区大小的工具, 用于自动扩展磁盘分区大小
# 先检查 growpart 命令是否已安装, 如果没有安装, 则自动使用 yum 安装所需的包
# cloud-utils-growpart 是包含 growpart 命令的工具包
type growpart || sudo yum install -y cloud-utils-growpart
sudo yum update cloud-utils-growpart
sudo LC_ALL=en_US.UTF-8 growpart /dev/vdb 1

# 2. 扩容文件系统
sudo resize2fs /dev/vdb1

# 3. 验证
df -h

