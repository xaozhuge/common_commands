# 1. openclaw 想要支持SSE, 需要检查配置是否开启
# openclaw.json 配置中 gateway下的HTTP
```
	"http": {
      "endpoints": {
        "chatCompletions": {
          "enabled": true
        }
      }
    },
```

# 2. SSE调用openclaw
# IP和端口变量: 192.168.0.10:18789

