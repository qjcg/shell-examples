#!/usr/bin/env bash

trap myfunc INT

myfunc() {
	printf "\nDeath by SIGINT (CTRL-c)!\n"
}

echo Going to sleep...
sleep 999999999
