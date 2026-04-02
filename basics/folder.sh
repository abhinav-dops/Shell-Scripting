#!/bin/bash

<< task
 1 is argument for folder name,
 2 is starting number,
 3 is end/range
task

for (( num=$2; num<=$3; num++ )); 
do
	mkdir "$1$num"
done


