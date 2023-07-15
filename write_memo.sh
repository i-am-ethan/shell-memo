#!/bin/zsh

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then

 writeMemo() {
   YEAR=$(date +%Y)
   MONTH=$(date +%Y%m)
   MEMO_HOME="$HOME/memo/$YEAR/$MONTH"
   MEMO_FILE="$MEMO_HOME/$(date +%Y_%m_%d).txt"

   if [[ ! -d $MEMO_HOME ]]; then
     mkdir -p "$MEMO_HOME"
   fi
   if [[ ! -f $MEMO_FILE ]]; then
     touch "$MEMO_FILE"
   fi
   vim "$MEMO_FILE"
 }
 writeMemo "$@"

fi