# 1. 安装dlv
go install github.com/go-delve/delve/cmd/dlv@latest
dlv version

# 2. 配置 launch.json
"configurations": [
    {
        "name": "Launch Go Program",
        "type": "go",
        "request": "launch",
        "program": "${workspaceFolder}/main.go",
        "env": {
            "SERVICE_NAME": "env变量",//例如 oneid
        },
        "args": [
            "main.go的参数"//例如 web
        ],
        "cwd": "${workspaceFolder}"
    }
]

# 3. db.ini 的配置
User = 用户名
Password = `密码`
Host =  host:port
Name = 数据库名

