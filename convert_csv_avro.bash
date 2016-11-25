#!/bin/bash
csv2avro \
	--schema schema.avsc \
	--delimiter "\t" \
	--line-ending "\n" \
	--bad-rows ~/avro_data/rows3.bad \
	~/avro_data/2016-11-22-test_faiz.z_312.csv
