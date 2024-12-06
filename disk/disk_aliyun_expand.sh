# 1. 扩容分区
# growpart 是一个用于扩展(增加)分区大小的工具, 用于自动扩展磁盘分区大小
type growpart || sudo yum install -y cloud-utils-growpart
sudo yum update cloud-utils-growpart
sudo LC_ALL=en_US.UTF-8 growpart /dev/vdb 1

# 2. 扩容文件系统
sudo resize2fs /dev/vdb1

# 3. 验证
df -h

