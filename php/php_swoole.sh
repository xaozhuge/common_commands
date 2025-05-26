# 1. Swoole 是一个高性能的协程和多进程框架, 旨在为PHP提供异步、并发、协程等功能
# 解决了传统PHP环境中的多进程管理问题

# 2. Swoole 提供了一个进程管理器, 可以轻松启动和管理多个进程
# 通过 Swoole\Process 类来创建多个进程, 而不必依赖 PHP 的 pcntl 扩展

# 2.1 创建一个子进程
$process = new Swoole\Process(function(Swoole\Process $worker) {
    # 子进程逻辑
    $worker->write("Hello from child process\n");
    $worker->exit(0);
});

# 2.2 启动子进程
$pid = $process->start();

# 2.3 退出子进程
$worker->exit(0);

# 2.4 主进程等待子进程结束
$status = $process->wait();

# 3. 协程通常用于解决 I/O 密集型任务
# 而多进程更适合 CPU 密集型任务

# 3.1 创建并启动一个协程-方式1
use Swoole\Coroutine;
Coroutine::create(function () use ($worker) {
	# 模拟 IO 密集型任务
	Coroutine::sleep(1);
	echo "Completed task in child process\n";
});

# 3.2 创建并启动多个协程-方式2
Swoole\Runtime::enableCoroutine();
for ($i = 0; $i < 3; $i++) {
    go(function () use ($i) {
        echo "协程 $i 启动，协程ID: " . Swoole\Coroutine::getCid() . PHP_EOL;
        Co::sleep(1 + $i);
        echo "协程 $i 结束，协程ID: " . Swoole\Coroutine::getCid() . PHP_EOL;
    });
}

