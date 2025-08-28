
server {
  listen       80;
  server_name  var.com;
  rewrite ^(.*)$  https://$host$1 permanent;
}

