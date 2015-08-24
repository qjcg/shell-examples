#!/usr/bin/env bash
# Example of case-statement usage

language=$1

case $language in
en|english|55) echo "Hello World" ;;
fr) echo "Allo Monde" ;;
es) echo "Hola Mundo" ;;
*) echo "I don't understand you..." ;;
esac

# If-statement equivalent to the case-statement above.
# Notice that the if-statement version is slightly longer.

#if [[ $language =~ en|english|55 ]]; then
#	echo "Hello World"
#elif [[ $language = fr ]]; then
#	echo "Allo Monde"
#elif [[ $language = es ]]; then
#	echo "Hola Mundo"
#else
#	echo "I don't understand you..."
#fi
