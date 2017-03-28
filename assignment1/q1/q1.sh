#!/bin/bash

var1=$( echo "$1" | grep  -E ^-?[0-9]+$ )
var2=$( echo "$2" | grep  -E ^-?[0-9]+$ ) 

if ! [ $# -eq 2 ]
then 
	echo Please input 2 arguements. 	
elif  [ -z "$var1" ] || [ -z "$var2" ]  
then	
	echo Please input integer arguments. 
elif [ $1 -eq $2 ]
then 
	echo $1 = $2
elif [ $1 -gt $2 ]
then
	echo $1 \> $2
else 
	echo $1 \< $2 	

fi
