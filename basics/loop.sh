#!/bin/bash
for fruit in apple banana mango; do
	echo $fruit
done

echo

for i in {1..5}; do
	echo $i
done

echo 

for i in {1..10..2}; do
	echo $i 
done

for i in {1..10}; do
    [ $i -eq 5 ] && continue   # skip 5
    [ $i -eq 8 ] && break      # stop at 8
    echo $i
done
