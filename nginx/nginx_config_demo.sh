
server {

    listen 80 default_server;
    listen 443 ssl default_server;

    ssl_certificate      /alidata/ssl/域名.pem;
    ssl_certificate_key  /alidata/ssl/域名.key;

    return 444;

}


# 1. default_server 将当前的server块设置为默认服务器
# 2. 当客户端请求没有匹配到任何其他定义的server块时, Nginx会将请求分配给标记为default_server的服务器
# 3. ssl_certificate 用于指定SSL证书文件的位置, SSL证书用于加密客户端与服务器之间的通信, 确保数据传输的安全性和完整性
# 4. pem 是一种常见的证书文件格式, 包含了服务器的公共密钥。