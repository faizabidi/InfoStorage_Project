#!/bin/bash
csv2avro \
	--schema schema.avsc \
	--delimiter "\t" \
	--line-ending "\n" \
	--bad-rows rows.bad \
	--write-defaults
	~/2016-11-22-test_faiz.z_312
