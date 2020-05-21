#!/usr/bin/env bash
# use imagemagick to convert all jpegs to 200x200 png for use on our website
mogrify -format png -background none -gravity Center -resize 200x200 *.jpeg