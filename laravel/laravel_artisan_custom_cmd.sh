# 1. 生成自定义命令, 也可以直接创建 app/Console/Commands/SyncToMysql.php
php artisan make:command SyncToMysql

# 2. 配置命令的名称和参数(必选，可选)
# 2.1 $signature 属性定义了这个命令的名称和参数,例如
protected $signature = 'synctomysql {tablename} {date?}';
# 2.2 synctomysql 是命令的名称, 用于命令行中使用
php artisan synctomysql
# 2.3 {tablename} 是一个必选参数,运行命令时必须提供这个参数. 它代表要同步的数据表名称
php artisan synctomysql user_table
# 2.4 {date?} 是一个可选参数, 运行命令时可以选择提供这个参数. 它代表同步操作的日期
php artisan synctomysql user_table 2024-06-01
