#!/bin/bash

filename=$1

# Remove all newlines
tr -d '\n' < $filename > newlines_removed.txt
