#!/bin/bash
# Example demonstrating the use of assert.sh for unit testing.

source ../_vendor/assert.sh/assert.sh

greet() {
	echo hello $1
}

assert "greet" "hello"
assert "greet jack" "hello jack"
assert "greet jack" "HELLO JERRY"
assert_end greet_function
