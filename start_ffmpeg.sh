#!/bin/bash

sudo ip netns exec camera_net ffmpeg -rtsp_transport tcp -i rtsp://<USER>:<HASLO>@<ADRES>:<PORT>/Streaming/channels/102 -c:v libx264 -preset veryfast -crf 23 -g 50 -tune zerolatency -an -hls_time 2 -hls_list_size 43200 -hls_flags delete_segments -hls_segment_filename html/camera1/segment_%05d.ts html/camera1/stream.m3u8 &
sudo ip netns exec camera_net ffmpeg -rtsp_transport tcp -i rtsp://<USER>:<HASLo>@<ADRES>:<PORt>/Streaming/channels/102 -c:v libx264 -preset veryfast -crf 23 -g 50 -tune zerolatency -an -hls_time 2 -hls_list_size 43200 -hls_flags delete_segments -hls_segment_filename html/camera2/segment_%05d.ts html/camera2/stream.m3u8 &


