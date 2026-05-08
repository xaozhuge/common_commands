# 1. openclaw里的大模型配置
# 注意: openclaw里配置的模型是 bailian/qwen3.5-plus, 但是对于背后的模型接收到的是 qwen3.5-plus
# 按量付费的baseUrl
baseUrl: https://ark.cn-beijing.volces.com/api/v3
# coding plan的baseUrl
baseUrl: https://ark.cn-beijing.volces.com/api/coding/v3
apiKey: xxx
api: openai-completions 或者 anthropic-messages
model: bailian/qwen3.5-plus

# 2. 配置的参数是如何发送请求
# 按量付费, 拼接上了 chat/completions
curl https://ark.cn-beijing.volces.com/api/v3/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer xxx" \
  -d $'{
    "messages": [
        {
            "content": "你是人工智能助手。",
            "role": "system"
        },
        {
            "content": "今天北京天气怎么样",
            "role": "user"
        }
    ],
    "model": "doubao-seed-2-0-lite-260215",
    "reasoning_effort": "medium",
    "stream": true
}'

# coding plan, 拼接上了 chat/completions

