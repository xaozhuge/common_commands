# 定义函数
curl2() {
  local URL=$1
  local TOKEN=$2
  local DATA=$3
  HEADER1="Content-Type: application/json";
  HEADER2="authorization: $TOKEN";
  # curl -s -S -X POST "$URL" -H "$HEADER1" -H "$HEADER2" -d "$DATA";

  cmd=$(cat <<EOF
curl -s -S -X POST "$URL" -H "$HEADER1" -H "$HEADER2" -d '$DATA';
EOF
)
  echo "$cmd"
  
}

# 调用函数
# curl2 "URL" "TOKEN" "{\"param1\": \"$value1\", \"param2\": \"$value2\"}"

# 调用函数
DATA=$(cat <<EOF
{"page":1,"num":10}
EOF
)
URL=
TOKEN=

