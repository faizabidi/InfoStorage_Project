#!/usr/bin/python

import sys
import csv

if len(sys.argv) != 2:
	print("Enter one filename. Exiting....")
	exit(1)

filename = sys.argv[1]
csv_filename = filename.split('.')[0]

input_file = open(sys.argv[1])

with open("%s.csv" %csv_filename, "wb") as f:
	for lines in input_file:
		lines = lines.rstrip('\n')
		lines = lines.split('\t')
		writer = csv.writer(f, quoting=csv.QUOTE_ALL)
		writer.writerow(lines)

