# 1. -S 是 curl 的静默模式增强参数, 全称 --show-error
# 它必须和 -s (--silent 静默模式) 一起用
# -s: 关闭所有输出(包括进度条、错误信息)
# -S: 只保留错误信息输出, 正常输出依然静默

# 2. curl -sS = 安静执行, 但出错时一定会打印错误(最常用的生产 / 脚本写法)

# 3. 基础用法(只在失败时打印错误)
curl -sS https://httpbin.org/get
# 请求成功：无任何输出
# 请求失败(如 404/500 / 断网): 会输出错误信息

# 4. 把正常结果保存到文件, 只输出错误
curl -sS -o output.json https://httpbin.org/get
# 成功: 文件写入, 终端无输出
# 失败: 终端打印错误(如 Connection refused)

# 5.  脚本中最常用(推荐)
```
#!/bin/bash
response=$(curl -sS "https://httpbin.org/get")

if [ $? -ne 0 ]; then
  echo "请求失败！"
  exit 1
fi

echo "请求成功：$response"
```

# 6. 配合超时、失败重试(生产级)

