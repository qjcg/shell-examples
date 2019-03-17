#!/usr/bin/env bats

@test "Prints expected output" {
	run ./for
	[[ ${lines[0]} =~ file1 ]]
	[[ ${lines[1]} =~ file2 ]]
	[[ ${lines[2]} =~ file3 ]]
}
