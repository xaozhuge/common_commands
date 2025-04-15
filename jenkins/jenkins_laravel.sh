#!/bin/sh
echo '开始更新代码' 
ssh -tt 用户名@IP "pwd;\
cd /data/www/api_code;\
sudo /bin/git pull origin master;\
sudo /bin/docker exec php73_c php /www/api_code/artisan route:clear;\
sudo /bin/docker exec php73_c php /www/api_code/artisan config:clear;\
ls -al --full-time|grep git|grep -v .gitignore;"
echo '结束更新代码' 
echo ''

#!/bin/sh
echo '开始更新代码' 
ssh -tt 用户名@IP "pwd;\
cd /data/www/api_code;\
sudo /bin/git pull origin master;\
sudo /alidata/server/php73/bin/php artisan config:clear;\
sudo /alidata/server/php73/bin/php artisan route:clear;\
ls -al --full-time|grep git|grep -v .gitignore;"
echo '结束更新代码' 
echo ''

