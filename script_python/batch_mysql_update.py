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
    # 定义开始时间
    start = time.time()
    # 执行 UPDATE 语句
    sql = "update test set words=CHAR_LENGTH(content) where  words=0 limit 1000;"
    affected_rows = cursor.execute(sql)

    # 提交事务
    conn.commit()
    # 定义结束时间
    end = time.time()
    duration = end - start

    # 打印返回值（受影响的行数）
    res =  f"耗时：{duration:.2f}秒, 更新了行数：{affected_rows}"
    p1(res)

# 关闭连接
cursor.close()
conn.close()

"""
PYTHONIOENCODING=utf-8 python3 batch_mysql_update.py 
"""

