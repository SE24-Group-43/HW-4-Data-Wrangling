#!/bin/bash

gawk -F',' 'NR > 1 { if ($3 == 2 && substr($13, 1, 1) == "S") {print $0} }' titanic.csv | \
sed 's/male/M/g; s/female/F/g' | \
gawk '{print $0}' 

gawk -F',' 'NR > 1 { if ($3 == 2 && substr($13, 1, 1) == "S") { if($7 != "") {total += $7; count++ }} } END { if (count > 0) print "Average Age: ", total/count; }' titanic.csv

