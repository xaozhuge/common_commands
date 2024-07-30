# 一、Please provide a valid cache path.
# 1. 确保storage目录下有如app, framework, views三个目录
sudo mkdir -p storage/app
sudo mkdir -p storage/views
sudo mkdir -p storage/framework/cache
sudo mkdir -p storage/framework/sessions
sudo mkdir -p storage/framework/views
sudo chmod -R  777 storage

# 2. 定时任务
* * * * * sudo -u www /alidata/server/php73/bin/php /alidata/www/script.com/artisan user:update

