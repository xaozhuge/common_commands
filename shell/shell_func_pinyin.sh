# 1. 打开并编辑 ~/.bashrc
sublime ~/.bashrc

# 2. 增加函数 pinyin
# 汉字转拼音(无声调空格分隔)
han2py() {
python3 - <<PY
from pypinyin import lazy_pinyin
text = """$1"""
print("".join(lazy_pinyin(text)))
PY
}

# 3. 加载生效 ~/.bashrc
source ~/.bashrc

# 4. 安装 pypinyin 包, pypinyin 官方兼容 Python 3.6+
python3 --version
pip3 install pypinyin

# 5. 命令说明
# 内嵌 Python 执行
# HereDoc 内嵌脚本: 把 `PY` 标记间的代码直接传给 python3 运行, 无需单独 py 文件
python3 - <<PY
# Python代码
PY

# 导入拼音库核心函数 `lazy_pinyin`
from pypinyin import lazy_pinyin

# `$1`: Shell 函数 第一个传入参数(要转拼音的中文文本)
# 三引号 `""""""`: 兼容参数内换行、空格、特殊符号, 避免引号转义报错
text = """$1"""

# `lazy_pinyin(text)`: 返回 拼音列表, 例：`中国` → `["zhong", "guo"]`
# `"".join(列表)`: 把拼音拼接、无空格连接

