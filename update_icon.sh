#!/bin/bash

# Check if the argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <output_path>"
  exit 1
fi

# First argument is the SVG output path
OUTPUT_FILE="$1"

CURRENT_DATE=$(date +'%Y-%m-%d')
URL="https://api.wolai.com/v1/icon?type=1&locale=en&color=grey&date=$CURRENT_DATE"

# Download the SVG file from the URL and save it to the specified output path
wget "$URL" -O "$OUTPUT_FILE"

echo "SVG file downloaded and saved to: $OUTPUT_FILE"
