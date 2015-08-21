#!/usr/bin/env bash
# Example of including and using functions & variables from another shell script

source _vendor/bash_colors/bash_colors.sh

magenta=$(clr_magenta 'some magenta text')
red=$(clr_red 'some red text')
green=$(clr_greenb 'some green background text')

echo "$magenta" "$red" "$green"
