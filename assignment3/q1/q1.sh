#!/bin/bash

file=$1
if ! [ -a $1  ]
then
	echo file $1 does not exist.
	exit
elif ! [ -s $1 ]
then
	echo File $1 is empty.
	exit 
fi	

echo `awk ' BEGIN { n=1 
	             }
	{
	       	if (n == 1)
			{	 min=$0
		     	         max=$0
		      }
	        else {  if (  min > $0 )
		           min=$0  
		       	
			if ( $0 > max)
			   max=$0
		       
		       
		    } 	    
		    n=n+1 
        } 
	END { printf max" "min } ' $file`   > min_max.txt

max=$( cat min_max.txt | egrep -o   "^[0-9]+"  )
min=$(cat min_max.txt | egrep -o "[0-9]+$" )

if [ $min -eq $max ]
then
	echo all values are in the file are same normalization not possible.
else 
        awk -v maxi="$max" -v mini="$min"  ' {  printf "%.4f\n" , ($0 - mini)/(maxi-mini)  } ' $file  

fi
rm min_max.txt 
