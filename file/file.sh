# 1. tar 压缩
tar -zcvf 1.tar.gz 1.sql
# 2. gzip 压缩
gzip 2.php > 2.php.gz

# 3. tar 解压缩
tar xzf 1.tar.gz
# 4. gzip 解压缩
gzip -d 2024-04-11.log.gz

# 5. 生成软链接, 路径为绝对路径
ln -s 已存在 新生成
ln -s /alidata/privatedb /alidata/server/mysql/data/privatedb

# 6. 查找最近一小时内修改过的文件
find 目录 -type f -mmin -60

# 7. 查找最近一小时内修改过的目录
find 目录 -type d -mmin -60

# 8. 修改目录/文件的所有权(所有者和组)
sudo chown -R username:group 目录/文件

