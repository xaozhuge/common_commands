# 1. vi config/logging.php, channels数组新增
'sql' => [
    'driver' => 'daily',
    'path' => storage_path('logs/sql.log'),
    'level' => env('LOG_LEVEL', 'debug'),
    'days' => 14,
],

# 2. vi config/app.php, 新增
'sql_debug'=>env('SQL_DEBUG', true),

