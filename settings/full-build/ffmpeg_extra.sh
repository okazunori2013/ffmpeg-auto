#!/bin/bash
_pre_configure(){
    do_patch "https://raw.githubusercontent.com/okazunori2013/FFmpeg-Builds/master/patches/ffmpeg/master/0001-avformat-webvttdec-Ignore-REGION-and-STYLE-chunks.patch"
}