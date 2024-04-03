# 1. avi 转 MP4
ffmpeg -i *.avi -c:v copy -c:a copy -y *.mp4