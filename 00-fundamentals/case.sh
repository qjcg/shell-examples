#!/usr/bin/env bash
# Example of case-statement usage

language=$1

case $language in
en|english|55) echo "Hello World" ;;
fr) echo "Allo Monde" ;;
es) echo "Hola Mundo" ;;
*) echo "I don't understand you..." ;;
esac
