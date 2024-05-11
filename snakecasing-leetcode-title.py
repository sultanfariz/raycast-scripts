#!/usr/bin/env python3

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Snakecasing Leetcode Title
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "title", "percentEncoded": true }

# Documentation:
# @raycast.authorURL github.com/sultanfariz

import sys

def convert_to_snake_case(text):
    """Converts text into snake_case format by removing dots and replacing spaces with underscores.

    Args:
        text: The text to convert.

    Returns:
        The text in snake_case format.
    """

    # Remove dots
    text_without_dots = text.replace('.', '').replace('%20', ' ').replace('-', ' ')

    # Replace spaces with underscores
    snake_case_text = '_'.join(text_without_dots.lower().split())

    return snake_case_text

original_text = f"{sys.argv[1]}"
snake_case_text = convert_to_snake_case(original_text)
print(snake_case_text)  # Output: 2807_insert_greatest_common_divisors_in_linked_list
