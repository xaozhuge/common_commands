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

