# 定义函数
curl1() {
  local URL=$1
  local TOKEN=$2
  local DATA=$3
  HEADER1="Content-Type: application/x-www-form-urlencoded";
  HEADER2="authorization: $TOKEN";
  curl -s -S -X POST "$URL" -H "$HEADER1" -H "$HEADER2" -d "$DATA";
}

# 调用函数
curl1 "URL" "TOKEN" "param1=1&param2=2"

# 定义函数
curl2() {
  local URL=$1
  local TOKEN=$2
  local DATA=$3
  HEADER1="Content-Type: application/json";
  HEADER2="authorization: $TOKEN";
  curl -s -S -X POST "$URL" -H "$HEADER1" -H "$HEADER2" -d "$DATA";
}

# 调用函数
curl1 "URL" "TOKEN" "{\"param1\": \"$value1\", \"param2\": \"$value2\"}"

# 调用函数
JSON=$(cat <<EOF
{
  "param1":"value1",
  "param2":"value2"
}
EOF
)
URL=
TOKEN=

curl1 "$URL" "$TOKEN" "$JSON"


