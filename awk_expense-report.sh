#!/bin/bash
# Example of a longer awk script for generating expense report from CSV phone usage data.

CSV_FILE=${1:-default.csv}

awk -F, '
	BEGIN {
		printf("%-13s %-13s\n", "Number", "Amount")
	}

	!/514-797-5646|514-921-3327/ && $2 > 0 {
		print $1, $2
		total+=$2
	}
	END {
		printf("%-13s %-13.2f\n", "", total)
	}
' $CSV_FILE
