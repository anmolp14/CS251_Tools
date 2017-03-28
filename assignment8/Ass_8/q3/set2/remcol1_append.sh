#!/bin/bash
for i in 6 7 8 9 10
do
	awk '{$1=""}1' Rnorm_\ $i\ .txt | awk '{$1=$1}1' >> output_Rnorm.txt 
	awk '{$1=""}1' runif_\ $i\ .txt | awk '{$1=$1}1' >> output_runif.txt 
done	
sed 's/ /\n/g' output_Rnorm.txt | awk -F "," '{print $1*100}' > output_Rnorm_final.txt
sed 's/ /\n/g' output_runif.txt | awk -F "," '{print $1*100}' > output_runif_final.txt
rm output_Rnorm.txt
rm output_runif.txt
