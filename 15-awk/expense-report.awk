#!/usr/bin/awk -f
# Example of a longer awk script for generating expense report from CSV phone usage data.
# PURE AWK VERSION
# To run, do:
#	./expense-report.awk test.csv

BEGIN {
	FS=","
	printf("%-13s %-13s\n\n", "NUMBER", "AMOUNT")
}

!/514-763-4132|514-921-3327/ && $2 > 0 {
	printf("%-13s $%-13s\n", $1, $2)
	total+=$2
}

END {
	printf("\n%13s $%-13.2f\n", "TOTAL:", total)
}
