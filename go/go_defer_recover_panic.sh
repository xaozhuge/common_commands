# 1. defer: 将defer后面跟随的语句延迟执行
# 先defer的最后执行
defer fmt.Println(1)
defer fmt.Println(2)
defer fmt.Println(3)
# 这里结果是有回车的
res: 3 2 1

# 2. panic: 让程序崩溃
panic("11")

