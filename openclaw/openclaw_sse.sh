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
# token变量: Authorization: Bearer token
# session变量: x-openclaw-session-key
# 内容变量: "content":"9+10"
curl -N http://192.168.0.10:18789/v1/chat/completions \
 -H 'Content-Type: application/json' \
 -H 'Authorization: Bearer token' \
 -H 'x-openclaw-agent-id: main' \
 -H 'x-openclaw-session-key: my_session_abc' \
 -d '{"model": "openclaw", "stream": true, "messages": [{"role":"user", "content":"9+10"} ]}'

# 3. 相同x-openclaw-session-key, 代表追问逻辑, 可以拿上一步的结果+10
curl -N http://192.168.0.10:18789/v1/chat/completions \
 -H 'Content-Type: application/json' \
 -H 'Authorization: Bearer token' \
 -H 'x-openclaw-agent-id: main' \
 -H 'x-openclaw-session-key: my_session_abc' \
 -d '{"model": "openclaw", "stream": true, "messages": [{"role":"user","content":"再加10"} ]}'

# 4. 不同x-openclaw-session-key, 代表无追问逻辑，拿不到前面的提问

