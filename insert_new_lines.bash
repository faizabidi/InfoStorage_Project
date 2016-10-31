#!/bin/bash

# Insert newlines after the keyword "twitter-serach"
CMD1="sed -r 's/twitter\-search/\\ntwitter\-search/g' newlines_removed.txt > cleaned1.txt"
eval $CMD1

# Insert newlines after the keyword "twitter-stream"
CMD2="sed -r 's/twitter\-stream/\\ntwitter\-stream/g' cleaned1.txt > cleaned2.txt"
eval $CMD2
