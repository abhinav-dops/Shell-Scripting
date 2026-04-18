#!/bin/bash

create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "code exit"
	exit 1
fi

echo "this won't work second time"

