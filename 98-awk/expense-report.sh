#!/bin/bash
# Example of a longer awk script for generating expense report from CSV phone usage data.

CSV_FILE=${1:-test.csv}

awk -F, '
	BEGIN {
		printf("%-13s %-13s\n\n", "NUMBER", "AMOUNT")
	}

	!/514-797-5646|514-921-3327/ && $2 > 0 {
		printf("%-13s $%-13s\n", $1, $2)
		total+=$2
	}

	END {
		printf("\n%13s $%-13.2f\n", "TOTAL:", total)
	}
' $CSV_FILE
