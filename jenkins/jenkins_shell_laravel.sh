#!/bin/sh

echo '开始更新' 
ssh -tt 用户名@IP "pwd;\
cd 项目目录;\
sudo /bin/git pull origin master --quiet;\
sudo /bin/docker exec php73_c php /www/项目目录/artisan route:clear;\
sudo /bin/docker exec php73_c php /www/项目目录/artisan config:clear;\
ls -al --full-time|grep git|grep -v .gitignore;"
echo '结束更新' 
echo ''

