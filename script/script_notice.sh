# 定义函数
notice() {
  local key=$1
  local content=$2
  remind=
  URL=https://域名.com/im/robot/send?key=$key
  JSON="{\"content\": \"$content\", \"remind\": \"$remind\"}"
  HEADER1="Content-Type: application/json";
  curl -s -S -X POST "$URL" -H "$HEADER1" -d "$JSON";
}

# 调用函数
notice "key" "content"

