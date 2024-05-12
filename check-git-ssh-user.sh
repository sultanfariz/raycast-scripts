#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Check Git SSH User
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Sultan Fariz
# @raycast.authorURL github.com/sultanfariz

ssh -T git@github.com
exit 1
