#!/bin/sh

# 定义本地目录和远程目录
REMOTE_USER="服务器用户名称"
REMOTE_HOST="服务器IP地址"
REMOTE_DIR="服务器项目目录"
LOCAL_DIR="本地项目目录"

# 获取变更的文件列表
changed_files=$(git status --porcelain | awk '{print $2}')

