# 1. vi config/logging.php, channels数组新增
'sql' => [
    'driver' => 'daily',
    'path' => storage_path('logs/sql.log'),
    'level' => env('LOG_LEVEL', 'debug'),
    'days' => 14,
],

