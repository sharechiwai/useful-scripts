ffmpeg -hwaccel cuda -i 20190513_120612.mp4 -filter:v "setpts=PTS/40" -an 20190513_120612_timelapse.mp4

