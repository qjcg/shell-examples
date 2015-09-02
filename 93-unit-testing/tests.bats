#!/usr/bin/env bats
# Example demonstrating the use of Bats for unit testing.

source greetlib

@test "greet with no arguments" {
	[[ "$(greet)" == "hello" ]]
}

@test "greet with one argument" {
	[[ "$(greet John)" == "hello John" ]]
	[[ "$(greet Jerry)" == "hello Jerry" ]]
	[[ "$(greet '1 2 3')" == "hello 1 2 3" ]]
}

@test "greet with two or more arguments" {
	[[ "$(greet 1 2 3)" == "hello 1" ]]
}
