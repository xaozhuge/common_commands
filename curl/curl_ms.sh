# 1. 微服务
URL="";
JSON='{"page": 1, "num": 20}';
HEADER1="Content-Type: application/json";
curl -X POST "$URL" -H "$HEADER1" -d "$JSON";

