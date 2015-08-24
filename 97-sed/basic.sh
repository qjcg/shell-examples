#!/bin/bash
# Examples of basic sed usage.

testfile=test.txt

echo replace just the first match on each line
sed 's/user/U S E R/' $testfile
echo
echo just the second match
sed 's/user/U S E R/2' $testfile
echo
echo just the third match
sed 's/user/U S E R/3' $testfile
echo
echo replace ALL matches "globally" on each line
sed 's/user/U S E R/g' $testfile
