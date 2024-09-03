# 1. 下载 ossutil, 用于上传至 oss
wget http://gosspublic.alicdn.com/ossutil/1.7.14/ossutil64
chmod +x ossutil64
sudo mv ossutil64 /usr/local/bin/ossutil
ossutil --version

# 2. 使用 ossutil 配置阿里云OSS访问密钥和其他信息
ossutil config

# 3. 上传单个文件
ossutil cp /localpath/file.txt oss://your-bucket-name/remotepath/file.txt

