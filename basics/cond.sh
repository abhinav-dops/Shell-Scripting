#!/bin/bash

age=18
if [[ $age -ge 18 ]]; then
	echo adult
else
	echo minor
fi

echo

name="Ran"
if [[ $name = R* ]]; then
	echo "hey $name"
fi


