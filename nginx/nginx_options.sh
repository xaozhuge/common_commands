# 1. options 请求处理
location /api {
    if ($request_method = OPTIONS) {
        add_header Access-Control-Allow-Origin *;
        add_header Access-Control-Allow-Headers Authorization,Host,X-Real-IP,Content-Type,source,platform,version;
        add_header Access-Control-Allow-Methods GET,POST,PUT,OPTIONS,DELETE;
        add_header Access-Control-Max-Age 2592000;
        return 204;
    }
}

