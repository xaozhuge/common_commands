# 1. defer: 将defer后面跟随的语句延迟执行
# 先defer的最后执行
defer fmt.Println(1)
defer fmt.Println(2)
defer fmt.Println(3)
# 这里结果是有回车的
res: 3 2 1

# 2. panic: 让程序崩溃
panic("11")

# 3. recover: 让系统崩溃流程恢复过来, 并且只在 延迟函数defer 中有效
# 在正常的流程中调用 recover 会返回nil
# 在有问题时, 可以捕获到panic的输入值，并且恢复正常执行
defer func(){
	if err := recover(); err != nil{
		fmt.Println("捕获异常:", err)
	}
}()
panic("11")
res: 3 2 1 捕获异常:11

