ffmpeg -hwaccel cuda -i 20210709_184422.mp4 -filter:v "setpts=PTS/9" -an 20210709_184422_timelapse.mp4

