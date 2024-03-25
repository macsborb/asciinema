#!/bin/bash
user=$(whoami)
date=$(date +"%d-%m-%Y")
CAST_FILE="$user@$date.cast"

if [ -f "$CAST_FILE" ]; then
    asciinema rec --append "$CAST_FILE" -q -c "boundary $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12"
else
    asciinema rec "$CAST_FILE" -q -c "boundary $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12"
fi
