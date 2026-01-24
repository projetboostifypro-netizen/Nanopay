#!/bin/bash
APP=$(jq -r '.appName' config.json)
BG=$(jq -r '.bgColor' config.json)
TXT=$(jq -r '.textColor' config.json)
magick convert -size 1024x1024 -background "$BG" -fill "$TXT" -gravity center -font DejaVu-Sans-Bold -pointsize 160 label:"$APP" logo.png
