#!/bin/bash

# Insert newlines after the keyword "twitter-serach"
CMD1="sed -r 's/twitter\-search/\\ntwitter\-search/g' remove_newlines.txt > insert_newlines.txt"
eval $CMD1

# Insert newlines after the keyword "twitter-stream"
CMD2="sed -r 's/twitter\-stream/\\ntwitter\-stream/g' insert_newlines.txt > insert_newlines.txt"
eval $CMD2
