# 1. vi config/logging.php, channels数组新增
'sql' => [
    'driver' => 'daily',
    'path' => storage_path('logs/sql.log'),
    'level' => env('LOG_LEVEL', 'debug'),
    'days' => 14,
],

# 2. vi config/app.php, 新增
'sql_debug'=>env('SQL_DEBUG', true),

# 3. vi app/Providers/EventServiceProvider.php
use Illuminate\Database\Events\QueryExecuted;
use Illuminate\Database\Events\TransactionCommitted;
use Illuminate\Database\Events\TransactionRolledBack;
use Illuminate\Database\Events\TransactionBeginning;
use App\Listeners\QueryExecutedListener;

