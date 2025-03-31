# 1. 获取 指定(用户)邮箱的 所有邮件键(uid)
doveadm fetch -u 用户@域名 "uid" mailbox INBOX all
# 用户多少封邮件, uid就是多少, uid针对每一个用户是唯一的

# 2. 获取 指定(用户)邮箱的 所有邮件键(uid)、邮件名前半部分
doveadm fetch -u 用户@域名 "uid guid" mailbox INBOX all

# 3. 获取 指定(用户)邮箱 并且 指定邮件uid 的 body(正文)
doveadm fetch -u 用户@域名 "body" mailbox INBOX uid

