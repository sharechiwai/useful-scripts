# this rely on a prepared list.txt, which has collection of video to be merged
ffmpeg  -hwaccel cuda -f concat -i C0033.MP4 -i C0034.MP4 i C0036.MP4 -c copy 20211214.mp4