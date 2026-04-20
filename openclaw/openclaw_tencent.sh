# 1. 找到并打开配置文件
ssh ubuntu@公网IP
sudo -i
sudo vi ~/.openclaw/openclaw.json

# 2. openclaw支持SSE
# gateway 下增加如下配置
    "http": {
      "endpoints": {
        "chatCompletions": {
          "enabled": true
        }
      }
    },

# 3. openclaw的SSE支持公网访问
# gateway修改bind的值
"bind": "loopback",

