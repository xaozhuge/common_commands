# 1. 提取变动分支B 相对新分支A 变动的代码 到工作区
git diff 新分支A..变动分支B | git apply

# 2. git diff 分析
git diff 新分支A..变动分支B
# 生成 "变动分支B" 相对于 "新分支A" 的差异
# 这里的 A..B 表示 "从 A 到 B 之间的改动", 也就是 B 有而 A 没有的修改
# 这个 diff 只输出文本, 不会改变任何本地文件或暂存区

# 3. git apply 分析
| (管道) 传给 git apply
# git apply 会把这个 diff 中的更改直接应用到工作区文件中, 但不会自动添加到暂存区(staging area)
# 这样就像你自己手动编辑了这些文件一样, Git 会认为这些是新的未暂存修改

