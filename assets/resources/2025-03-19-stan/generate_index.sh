#!/bin/bash

# Create index.html
echo "<!DOCTYPE html>" > index.html
echo "<html>" >> index.html
echo "<head><meta charset='UTF-8'><title>Index of $(basename "$PWD")</title></head>" >> index.html
echo "<body><h1>Index of $(basename "$PWD")</h1><ul>" >> index.html

# List files and directories (excluding hidden ones and index.html itself)
for item in *; do
  [ "$item" != "index.html" ] && echo "<li><a href='$item'>$item</a></li>" >> index.html
done

echo "</ul></body></html>" >> index.html
