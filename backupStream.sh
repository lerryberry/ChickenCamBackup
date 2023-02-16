placeholderURL="https://raw.githubusercontent.com/lerryberry/ChickenCamBackup/main/placeholder-offline.jpg"
imageName=$(basename $placeholderURL)
$(curl $placeholderURL > $imageName)
$(pkill "ffmpeg")
$(sleep 8)

$(
ffmpeg \
        -f lavfi \
                -i anullsrc \
        -f image2 \
                -loop 1 -r 18 \
                -i $imageName \
                -vcodec libx264 -crf 10 -pix_fmt yuv420p \
        -f flv rtmp://a.rtmp.youtube.com/live2/codehere
)
