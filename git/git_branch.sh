# 1. 找到含有关键字的远程/本地分支
git branch -r|awk -F '/' '{print $2"/"$3}'|grep keywords
git branch |awk -F '/' '{print $1"/"$2}'|grep keywords

# 2. 批量删除含有关键字的远程/本地分支
git branch -r|awk -F '/' '{print $2"/"$3}'|grep keywords|head -n 80|xargs git push origin --delete
git branch |awk -F '/' '{print $1"/"$2}'|grep keywords|head -n 80|xargs git branch -D





