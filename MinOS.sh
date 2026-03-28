#!/bin/bash

if ! [ $(id -u) = 0 ]; then
	echo "ERROR: You must run script as root"
	exit 1
fi

# TODO