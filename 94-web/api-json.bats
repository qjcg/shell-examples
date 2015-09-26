#!/usr/bin/env bats

cmd=./json-api-interaction

@test "prints 10 lines of output" {
	run $cmd
	[[ $status -eq 0 ]]
	[[ ${#lines[*]} -eq 10 ]]
}

@test "two invocations produce different output" {
	run $cmd
	[[ $status -eq 0 ]]
	out1="$output"

	run $cmd
	[[ $status -eq 0 ]]
	out2="$output"

	[[ "$out1" != "$out2" ]]
}
