server {
  listen       443 ssl;
  
  server_name  var.com;
  ssl_certificate   /ssl/var.com.pem;
  ssl_certificate_key  /ssl/var.com.key;
  
  ssl_session_timeout 5m;
  ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
  ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
  ssl_prefer_server_ciphers on;
  index index.html index.htm index.php;

  location / {

  }

  if ($time_iso8601 ~ '(\d{4}-\d{2}-\d{2})') {
    set $time $1;
  }

  access_log  /log/nginx/$host/$time.log;
}

