#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Switch Git SSH Account
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Sultan Fariz
# @raycast.authorURL github.com/sultanfariz

# Specify the path to your ssh config file
sshConfigFile=~/.ssh/config

# Backup the original file
cp "$sshConfigFile" "$sshConfigFile.bak"

# Process each line in the file
while IFS= read -r line; do
    if [[ $line == \#* ]]; then
        # Line starts with #, remove the # mark
        echo "${line:1}" >> "$sshConfigFile.tmp"
    else
        # Line doesn't start with #, add the # mark
        echo "#$line" >> "$sshConfigFile.tmp"
    fi
done < "$sshConfigFile"

cat $sshConfigFile

# Replace the original file with the modified one
mv "$sshConfigFile.tmp" "$sshConfigFile"

echo "Script completed. Backup saved to $sshConfigFile.bak"

ssh -T git@github.com
exit 1
