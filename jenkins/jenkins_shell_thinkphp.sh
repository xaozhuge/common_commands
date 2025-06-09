#!/bin/sh

echo '开始更新 script1'
ssh -tt 用户名@IP "pwd;\
cd 项目目录;\
sudo /bin/git pull origin master --quiet;\
ls -al --full-time|grep git|grep -v .gitignore;\
cd Application; \
sudo rm -rf Runtime/*;\
ls -al --full-time|grep Runtime;"
echo '结束更新 script1' 
echo ''

