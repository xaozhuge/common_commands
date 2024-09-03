# 1. 下载 ossutil, 用于上传至 oss
wget http://gosspublic.alicdn.com/ossutil/1.7.14/ossutil64
chmod +x ossutil64
sudo mv ossutil64 /usr/local/bin/ossutil
ossutil --version

# 2. 使用 ossutil 配置阿里云OSS访问密钥和其他信息
ossutil config
