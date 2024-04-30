#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Calculate Seconds After
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Date Now in String" }
# @raycast.argument2 { "type": "text", "placeholder": "Seconds" }

# Documentation:
# @raycast.author Sultan Fariz
# @raycast.authorURL github.com/sultanfariz

# Check if two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <date> <seconds>"
    exit 1
fi

# Input date and time
input_date=$1

# Input seconds
input_seconds=$2

# Convert the input date to seconds from the Unix Epoch
date_seconds=$(gdate -d"$input_date" +%s)

# Calculate the new date in seconds
new_date_seconds=$((date_seconds + input_seconds))

# Convert the new date seconds back to a date
new_date=$(gdate -d@"$new_date_seconds" +"%d-%m-%Y %H:%M:%S")
echo "New date and time: $new_date"