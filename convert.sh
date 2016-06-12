#!/bin/bash

for file in ./*.JPG; do
newfilename="framed_$(basename $file)"  

convert $file -resize 1600 \( +clone -crop 100x100+0+0 -fill white -colorize 100% -draw 'fill black circle 99,99, 99,0' -background \#067A58 -alpha shape \( +clone -flip \) \( +clone -flop \) \( +clone -flip \) \) -flatten -bordercolor \#067A58 -border 100%x100% -crop 3600x2400+0+400 $newfilename

done
