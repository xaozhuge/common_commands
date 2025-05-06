# 1. 微服务
URL="";
JSON='{"page": 1, "num": 20}';
HEADER1="Content-Type: application/json";
curl -X POST "$URL" -H "$HEADER1" -d "$JSON";

# 2. 多header时
HEADER1="Content-Type: application/x-www-form-urlencoded";
HEADER2="Authorization: token";

