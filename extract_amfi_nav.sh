#!/bin/bash

# Download the NAVAll.txt file from AMFI
curl -s https://www.amfiindia.com/spages/NAVAll.txt -o NAVAll.txt

# Extract only non-header lines with valid Scheme Name and NAV
# Save as TSV: SchemeName \t NAV
awk -F ';' 'NF > 1 && $4 ~ /^[0-9.]+$/ { print $4 "\t" $5 }' NAVAll.txt > amfi_nav.tsv

echo "✅ Data saved in amfi_nav.tsv (Scheme Name and Asset Value)"
