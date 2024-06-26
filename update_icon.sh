#!/bin/bash
CURRENT_DATE=$(date +'%Y-%m-%d')
REALATIVE_DIR="$(dirname "${BASH_SOURCE}")"
SCRIPT_DIR="$(cd $REALATIVE_DIR && echo "$(pwd)")"

OUTPUT_FILE="${SCRIPT_DIR}/../_attachments/icons/calendar_icon.svg"
URL="https://api.wolai.com/v1/icon?type=1&locale=en&color=grey&date=$CURRENT_DATE"
wget "$URL" -O "$OUTPUT_FILE"
