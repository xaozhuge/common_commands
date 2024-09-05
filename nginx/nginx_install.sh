# 1. 下载 nginx
mkdir -p /hwdata/server/nginx-122/
cd /hwdata/server/
wget http://nginx.org/download/nginx-1.22.1.tar.gz
tar -zxvf nginx-1.22.1.tar.gz

# 2. 安装 nginx,
cd /hwdata/server/nginx-1.22.1/
./configure --prefix=/hwdata/server/nginx-122/  --with-http_ssl_module --with-http_v2_module --with-http_realip_module --with-http_gunzip_module --with-http_gzip_static_module
make && make install

# 3. 出现问题: ./configure: error: the HTTP rewrite module requires the PCRE library.
sudo yum install pcre-devel

