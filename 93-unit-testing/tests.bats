#!/usr/bin/env bats
# Example demonstrating the use of Bats for unit testing.

source greetlib

@test "greet with no arguments" {
	result="$(greet)"
	[[ "$result" == "hello" ]]
}

@test "greet with one argument" {
	result="$(greet John)"
	[[ "$result" == "hello John" ]]

	result="$(greet Jerry)"
	[[ "$result" == "hello Jerry" ]]

	result="$(greet '1 2 3')"
	[[ "$result" == "hello 1 2 3" ]]
}

@test "greet with two or more arguments" {
	result="$(greet 1 2 3)"
	[[ "$result" == "hello 1" ]]
}
