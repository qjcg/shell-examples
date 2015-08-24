#!/bin/bash
# Demonstrate the use of Bash arrays.

my_array=(aaa bbb ccc ddd 'Jerry Q. Hacker')
echo 'Array position 0:' ${my_array[0]}
echo 'Array position 1:' ${my_array[1]}
echo 'Array position 2:' ${my_array[2]}
echo 'Array position 3:' ${my_array[3]}
echo 'Array position 4:' ${my_array[4]}

echo Reassigning index position 2
my_array[2]='REASSIGNED!'
echo 'Array position 2:' ${my_array[2]}

my_array+=(zzz rrr qqq)
echo ${my_array[*]}

# can use negative indexes to start counting
# from the right-hand-side of an array
echo ${my_array[-1]}

echo "Taking a slice of an array (like Python!)"
echo ${my_array[*]:1:3}
