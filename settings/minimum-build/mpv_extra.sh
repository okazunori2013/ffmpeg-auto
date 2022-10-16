#!/bin/bash
_post_vcs(){
    do_patch "https://patch-diff.githubusercontent.com/raw/mpv-player/mpv/pull/10315.patch"
    do_patch "https://raw.githubusercontent.com/okazunori2013/patchs/main/mpv/add_--auto-window-resize_option.patch"
}