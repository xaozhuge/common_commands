
server {

    listen 80 default_server;
    listen 443 ssl default_server;

    ssl_certificate      /alidata/ssl/域名.pem;
    ssl_certificate_key  /alidata/ssl/域名.key;

    return 444;

}


# 1. default_server 将当前的server块设置为默认服务器
# 2. 当客户端请求没有匹配到任何其他定义的server块时, Nginx会将请求分配给标记为default_server的服务器