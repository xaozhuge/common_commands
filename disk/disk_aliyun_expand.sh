# 1. 扩容分区
type growpart || sudo yum install -y cloud-utils-growpart
sudo yum update cloud-utils-growpart
sudo LC_ALL=en_US.UTF-8 growpart /dev/vdb 1

