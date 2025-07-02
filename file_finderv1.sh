#!/usr/bin/bash

echo "use Ctrl+c (^c) to cancel/exit"
echo ""
while true; do
    read -p "Enter filename to search for: " filename

    found=$(find $HOME -type f -name "$filename" 2>/dev/null)

    if [[ -n "$found" ]]; then
        echo "Found the following file(s):"
        echo "$found"
        break
    else
        echo "File not found. Try again."
    fi
done
