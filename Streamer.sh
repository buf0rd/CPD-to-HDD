cvlc -vvv alsa://plughw:2 --sout '#transcode{acodec=mp3,ab=64,channels=1}:standard{access=http,dst=0.0.0.0:9111/police.wav}'
