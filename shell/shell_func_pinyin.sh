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

