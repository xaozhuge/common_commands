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

# $listen增加
QueryExecuted::class => [
    QueryExecutedListener::class,
],
TransactionCommitted::class => [
    QueryExecutedListener::class,
],
TransactionRolledBack::class => [
    QueryExecutedListener::class,
],
TransactionBeginning::class => [
    QueryExecutedListener::class,
],

# 4. 新增文件 app/Listeners/QueryExecutedListener.php
<?php
namespace App\Listeners;

use Illuminate\Database\Events\QueryExecuted;
use Illuminate\Support\Facades\Log;

class QueryExecutedListener {
    public function handle($e) {
        if (config('app.sql_debug', false)) {
            if ($e instanceof QueryExecuted) {
                foreach ($e->bindings as $i => $binding) {
                    if ($binding instanceof \DateTime) {
                        $e->bindings[$i] = $binding->format('\'Y-m-d H:i:s\'');
                    } else {
                        if (is_string($binding)) {
                            $e->bindings[$i] = "'$binding'";
                        }
                    }
                }

                $sql = sprintf(str_replace('?', '%s', str_replace('%','%%',$e->sql)), ...$e->bindings);
                $logContent = sprintf(" SQL:%s, Time: %s, RequestId: %s, Api: %s", $sql, $e->time, request()->get("request-id-log"), request()->decodedPath());
                logger()->channel('sql')->info($logContent);
            } 
        }
    }
}

