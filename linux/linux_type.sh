# 1. type是一个Shell命令, 用来显示命令的类型, 比如可执行文件、Shell内建命令、函数、别名等

# 2. 可执行命令
cmd: type php
res: php is /alidata/server/php/bin/php

# 3. 内建命令
cmd: type pwd
res: pwd is a shell builtin

# 4. 别名
cmd: type ls
res: ls is aliased to `ls --color=auto'

