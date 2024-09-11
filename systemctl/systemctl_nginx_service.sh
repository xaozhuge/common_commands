[Unit]
Description=A high performance web server and a reverse proxy server
After=network.target

[Service]
Type=forking
PIDFile=/hwdata/server/nginx-122/logs/nginx.pid
ExecStartPre=/hwdata/server/nginx-122/sbin/nginx -t -c /hwdata/server/nginx-122/conf/nginx.conf
ExecStart=/hwdata/server/nginx-122/sbin/nginx -c /hwdata/server/nginx-122/conf/nginx.conf
ExecReload=/hwdata/server/nginx-122/sbin/nginx -s reload
ExecStop=/hwdata/server/nginx-122/sbin/nginx -s stop
PrivateTmp=true

[Install]
WantedBy=multi-user.target

