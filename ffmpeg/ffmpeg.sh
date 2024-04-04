# 1. avi 转 MP4
ffmpeg -i *.avi -c:v copy -c:a copy -y *.mp4

# 2. mov 转 mp4
ffmpeg -i *.mov -c:v copy -c:a copy -y *.mp4

# 3. mkv 转mp4
ffmpeg -i input.mkv -vcodec copy -acodec copy out.mp4


