#!/bin/sh

# 定义本地目录和远程目录
REMOTE_USER="服务器用户名称"
REMOTE_HOST="服务器IP地址"
REMOTE_DIR="服务器项目目录"
LOCAL_DIR="本地项目目录"

# 获取变更的文件列表
changed_files=$(git status --porcelain | awk '{print $2}')

# 同步变更的文件
for file in $changed_files; do  
  # 使用 scp 同步文件
  scp $LOCAL_DIR/$file $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR/$file
  
  # 检查 scp 命令是否成功执行
  if [ $? -ne 0 ]; then
    echo "Error : $file"
    exit 1
  fi
done

echo "All successfully"
