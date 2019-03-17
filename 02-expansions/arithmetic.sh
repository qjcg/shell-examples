#!/usr/bin/env bash
# Example of arithmetic evaluation in bash

echo $(( 5 + 5 )) # prints 10

number=22
# no dollar sign here --- not requesting value, simply evaluating expression
(( number++ ))
(( number++ ))
(( number++ ))
echo $number #prints 25
