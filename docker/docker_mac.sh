# 1. mac 命令行退出 docker
osascript -e 'quit app "Docker"'

# 2. mac 命令行启动 docker
open -a Docker

# 3. 通过 AppleScript 让 macOS 系统退出名为 “Docker” 的应用程序, 也就是关闭 Docker Desktop
osascript -e 'quit app "Docker"'

# 4. 
# osascript: macOS 自带的命令行工具, 用来执行 AppleScript 脚本(自动控制系统和应用)
# -e: 表示直接在命令行中执行接下来的脚本字符串
# 'quit app "Docker"': AppleScript 语句, 意思是 退出名为 "Docker" 的应用
osascript -e 'quit app "Docker"'

# 5.1 osascript 退出
# 请求系统正常退出 Docker
# 安全，像点"Quit"按钮一样
osascript -e 'quit app "Docker"'

# 5.2 kill 退出
# 直接杀掉进程 
# 强制关闭，可能不安全
killall Docker

