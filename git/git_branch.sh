# 1. 找到含有关键字的远程/本地分支
git branch -r|awk -F '/' '{print $2"/"$3}'|grep keywords





