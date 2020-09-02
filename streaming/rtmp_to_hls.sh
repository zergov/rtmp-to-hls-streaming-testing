# audio quality is shit btw

ffmpeg -i rtmp://127.0.0.1:1935/live/zergov \
    -c:v libx264 -crf 21 -preset veryfast -s 1280x720 -r 30 \
    -c:a aac -b:a 320k -ac 2 \
    -f hls -hls_time 4 -hls_list_size 6 -hls_flags 'delete_segments' zergov/zergov.m3u8
