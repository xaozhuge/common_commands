# 1. 列出当前已经配置的 MCP Server
# 知道有哪些 MCP Server
mcporter list

# 2. 查看指定的 MCP Server 提供了哪些 Tool
# 知道这个 Server 有哪些工具
mcporter list <mcp_server_name>

# 3. 查看 Tool 的 JSON Schema(LLM 真正需要看的内容)
# 知道工具的完整接口定义(名称、描述、参数 Schema), 供 Agent 或 LLM 自动选择和调用工具
mcporter list <server> --schema

# 4. 把名为 sheetdata 的 HTTP MCP Server 注册到 mcporter 的全局(Home)配置中,
# 以后可以直接通过 mcpname 这个名称访问 https://xxx.com/mcp/sheetdata, 
# 并且所有请求都会自动携带 Authorization 请求头
mcporter config add sheetdata \
--url "https://xxx.com/mcp/sheetdata" \
--header "Authorization=69f5a68cd6ad0397478a89012dq" \
--transport http 
--scope home

# mcporter config add: 添加一个 MCP Server 配置, 配置会写入 mcporter 配置文件, 而不是临时使用
# sheetdata: MCP Server 的名称(Name), 以后通过 mcporter list sheetdata 、 mcporter call sheetdata.xxx 等命令引用它
# --url "https://xxx.com/mcp/sheetdata": MCP Server 的 HTTP 地址, 也就是 Streamable HTTP MCP Endpoint
# --header "Authorization=69f5a68cd6ad0397478a89012dq": 给所有请求自动添加 HTTP Header: Authorization: 69f5a68cd6ad0397478a89012dq, 通常用于 Token 或 API Key 认证

