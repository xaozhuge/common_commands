import pymysql
import time

# 输出后退出
def p(content):
    print(content)
    exit()

# 输出后不退出
def p1(content):
    print(content)

# 建立连接
conn = pymysql.connect(
    host='',
    user='',
    port=,
    password='',
    database='',
    charset='utf8mb4'
)
cursor = conn.cursor()

# 定义循环, 这里表示一直执行
while True:
    p1("123")

