#!/bin/sh

YEAR=$(date +%Y)
MONTH=$(date +%Y%m)
MEMO_HOME="$HOME/memo/$YEAR/$MONTH"
MEMO_FILE="$MEMO_HOME/$(date +%Y_%m_%d).txt"

if [[ ! -d $MEMO_HOME ]]; then
mkdir -p "$MEMO_HOME"
fi
if [[ ! -f $MEMO_FILE ]]; then
echo "=========================" >> "$MEMO_FILE"
echo "やったこと" >> "$MEMO_FILE"
echo "" >> "$MEMO_FILE"
echo "わかったこと" >> "$MEMO_FILE"
echo "" >> "$MEMO_FILE"
echo "次やること" >> "$MEMO_FILE"
echo "=========================" >> "$MEMO_FILE"
fi
vim "$MEMO_FILE"
