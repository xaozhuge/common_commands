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

