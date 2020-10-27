$filenames = Get-ChildItem *.mp4
$extension = ".mp4"
$export_extension = "_1080.mp4"
ForEach( $file in $filenames){
#Convert using ffmpeg
#echo $file.Name
#ffmpeg -i $filepath$file$extension -codec:v libtheora -qscale:v 7 -codec:a libvorbis -qscale:a 5 $filepath$file.ogv
$filename = $file.BaseName
#echo "ffmpeg -hwaccel cuda -i $($file.Name).mp4 -vf scale=-1:1080 -c:v libx264 -crf 18 -preset veryslow -c:a copy $($file.Name)_1080.mp4"
ffmpeg -hwaccel cuda -i $filename$extension -vf scale=-1:1920 -c:v libx264 -crf 18 -preset veryslow -c:a copy $filename$export_extension
}