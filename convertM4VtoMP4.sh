#!/bin/bash
# decrease -crf value for a better video quality  
for i in *.m4v;
    do ffmpeg -i "$i" -vcodec libx265 -crf 32 "${i%.*}.mp4"; 
done
