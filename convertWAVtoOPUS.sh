#!/bin/bash
# decrease -crf value for a better video quality  
for i in *.wav;
    do ffmpeg -i "$i" -c:a libopus -b:a 24k "${i%.*}.opus"; 
done
