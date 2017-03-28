#!/bin/bash

#-------------------------------------------------------------
#checking if all files exist and are not empty
#-------------------------------------------------------------
if ! [ -e $1 ]
then
	echo File $1 does not exist. 
	exit
elif ! [ -s $1 ]
then 	
        echo File $1 is empty.   
        exit 
fi

if ! [ -e $2 ]
then
	echo File $2 does not exist. 
	exit
elif ! [ -s $2 ]
then 	
        echo File $2 is empty.   
        exit 
fi

if ! [ -e $3 ]
then
	echo File $3 does not exist. 
	exit
elif ! [ -s $3 ]
then 	
        echo File $3 is empty.   
        exit 
fi

#-------------------------------------------------------------
# Main Code
#-------------------------------------------------------------


f1=$1
f2=$2
f3=$3
cat "$f3" | awk -F "," '{print $2+$3}' | paste -d ',' "$f3" - |cut -d ',' -f1,4 > f3m.txt
n=$(cat $f1 | wc -l)
seq $n | paste -d ',' - "$f1" > f1m.txt 
awk -F "," 'FNR==NR{ if( NR==1) 
                          { a[$1]=1
			  next } 
		     a[$1]++
	             j=1
		     next
                      } 
		     
		   {  
		       for( i=0; i<a[j] ; i++) 
		          print $2
		      j++ }' $f2 f3m.txt | paste -d ',' "$f2" - | cut -d ',' -f2,3 | sort | cut -d ',' -f2 | paste -d ',' "f1m.txt" - | sort | cut -d ',' -f2- 

		      
rm f1m.txt
rm f3m.txt
