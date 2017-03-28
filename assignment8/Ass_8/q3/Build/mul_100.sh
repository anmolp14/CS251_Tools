#!/bin/bash
for i in 1 2 3 4 5
do
	awk -F "," '{print $1*100}' "./set1/Rnorm_ $i .txt" >> Rnorm_mul100_set1.txt
done
for j in 1 2 3 4 5
do
	awk -F "," '{print $1*100}' "./set1/runif_ $j .txt" >> runif_mul100_set1.txt
done
