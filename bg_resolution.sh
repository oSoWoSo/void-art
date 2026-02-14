#!/bin/bash
#
# bg_resolution.sh - Script to organize BG images based on it's resolution
#
# Site : www.github.com/gabriel-russo/Void-Wallpapers
# Author: Gabriel Russo <gabrielrusso@protonmail.com>
#
# -------------------------------------------------------------
# This script requires: ImageMagick package.
#
# Examples:
# File A.png: 1920x1080 ; File B.png: 1280x720
# $ ./bg_resolution.sh
# wallpapers-hires/A.png; wallpapers-lowres/B.png
# --------------------------------------------------------------
#
# Changelog:
# v1.0 03/06/2022, gabriel:
#     - Initial commit
#
# License: CC-BY-4.0
#

# Silent Pushd and Popd
pushd() {
  command pushd "$@" >/dev/null
}

popd() {
  command popd "$@" >/dev/null
}

# "Root" to go back and forth
pushd "assets/"

pushd "walls/"
for img in *{.png,.jpg}; do
  IMG_RES_W=$(identify -format '%w' ${img})
  IMG_RES_H=$(identify -format '%h' ${img})
  popd
  if [ ${IMG_RES_W} -ge 1920 ]; then
    if [ -d 'wallpapers-hires/' ]; then
      mv walls/${img} 'wallpapers-hires/'
    else
      mkdir 'wallpapers-hires'
      mv walls/${img} 'wallpapers-hires/'
    fi
    pushd "walls/"
  else
    if [ -d 'wallpapers-lowres/' ]; then
      mv walls/${img} 'wallpapers-lowres/'
    else
      mkdir 'wallpapers-lowres'
      mv walls/${img} 'wallpapers-lowres/'
    fi
    pushd "walls/"
  fi
done
