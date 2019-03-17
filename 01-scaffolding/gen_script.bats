#!/usr/bin/env bats

@test "generated script contains " {
	run ./gen_script.sh
	[[ ${lines[*]} =~ '#!/bin/bash'
}
