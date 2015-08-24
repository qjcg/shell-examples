#!/usr/bin/env bash
# Illustrating the use of ${BASH_SOURCE[0]}

greet() {
	echo hello $1
}

# like 'if __name__ == "__main__":' in Python, the syntax below allows us to
# use this script as a library AND an application

# when this script is executed directly this will run
# but NOT when this file is sourced from another script
[[ ${BASH_SOURCE[0]} = $0 ]] && greet "$1"
