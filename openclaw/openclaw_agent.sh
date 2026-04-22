# 1. openclaw 添加 agent
openclaw agents add

# 2. 访问指定agent的数据
# 使用 HTTP Header, X-OpenClaw-Agent-ID: agent名称
curl -N http://127.0.0.1:18789/v1/chat/completions \
 -H 'Content-Type: application/json' \
 -H 'Authorization: Bearer <变量token>' \
 -H 'x-openclaw-agent-id: <变量agent>' \
 -d '{"model": "openclaw", "stream": true, "messages": [{"role":"user","content":"你的worskspace路径是什么"} ]}'

# 3. 查看 ~/.openclaw/openclaw.json 配置

