#!/bin/bash

# Transfer the AQL data into the MySQL database
if mysql -u root -p'infostorage' test_faiz < ~/sample_msql_data/Dump20160919.sql; then
    echo Import of data into MySQL successful!
else
    echo Import of data into MySQL unsuccessful.
fi

