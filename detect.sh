#!/bin/bash

while :
do
streamer -c /dev/video0 -b 16 -o cam.jpeg
./darknet detect cfg/yolov3.cfg yolov3.weights ./cam.jpeg | grep 'person'
done | nc localhost 8080

