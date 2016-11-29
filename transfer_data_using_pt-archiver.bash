#!/bin/bash

# Run pt-archiver to transfer tweets to the Archives table
# Also output contents into a text file
# Note that pt-archiver MOVES tweets to the Archives table.
# That means that tweets will be deleted from the original table 
cmd="sudo pt-archiver --source h=localhost,D=test_faiz,t=z_312 \
    -u root -p'infostorage' \
    --dest h=localhost,D=test_faiz,t=Archives \
    --file '/home/ubuntu/sample_msql_data/%Y-%m-%d-%D.%t' \
    --where "1=1" --statistics --ignore"
eval $cmd

# Check if the process failed
retcode=$?
if [ $retcode -ne 0 ]; then
    echo pt-archiver process failed.
else
    echo Successfully transferred tweets to the ArchiveDB, and also to a text file.
fi
