# 1. 查看 python 版本
python --version

# 2. 根据python版本, 启动临时的http服务器
# 2.1 python3 8000端口可以修改
python -m http.server 8000
# 2.2 python2 8000端口可以修改
python -m SimpleHTTPServer 8000

# 3. 注意: 大部分文件都会显示下载,但是会自动显示一些常见的文本文件(如.txt/.html等）
# 会自动加载.png的图片, 播放.mp4的视频
