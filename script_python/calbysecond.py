import time
from datetime import datetime, timezone

# 输出内容
def p(content):
    print(content)
    time.sleep(1)

# 当前时间戳
def returnCurrentTimeStamp():
    timestamp = int(time.time())
    return timestamp

# 指定时间转时间戳
def toTimestamp(time_str):
    ts = datetime.strptime(time_str, "%Y-%m-%d %H:%M:%S")
    return int(ts.timestamp())

