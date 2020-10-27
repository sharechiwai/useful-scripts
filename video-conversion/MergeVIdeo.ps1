# this rely on a prepared list.txt, which has collection of video to be merged
ffmpeg  -hwaccel cuda -f concat -i list.txt -c copy 20190813.mp4