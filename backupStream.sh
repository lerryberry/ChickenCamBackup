placeholderURL="https://raw.githubusercontent.com/lerryberry/ChickenCamBackup/main/placeholder-offline.jpg"
imageName=$(basename $placeholderURL)
$(curl $placeholder > $imageName)
$(pkill "ffmpeg")
$(sleep 2)

$(
  ffmpeg -loop 1 -framerate 30 \
    -f lavfi \
      -i anullsrc c:a aac \
    -i $imageName \
      -c:v libx264 -pix_fmt yuv420p \
  -f flv rtmp://a.rtmp.youtube.com/live2/3sa2-heh8-0yhb-tgcz-41ef
)
