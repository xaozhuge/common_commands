# 1. nginx配置文件中, websocket配置
location /wss {
	proxy_pass http://127.0.0.1:10010;
	proxy_http_version 1.1;
	proxy_set_header Upgrade $http_upgrade;
	proxy_set_header Connection "upgrade";
}

