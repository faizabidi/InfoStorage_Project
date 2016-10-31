#!/bin/bash

filename=$1
echo $filename

# Remove all newlines
tr -d '\n' < $filename > remove_newlines.txt

# Insert newlines after the keyword "twitter-serach"
# sed 's/twitter-search/&\n/g' remove_newlines.txt > insert_newlines.txt
