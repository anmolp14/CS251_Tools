#!/bin/bash

if ! [ $# -eq 3 ]
then 
	echo please input 3 arguments:
	echo 1.\) File name 
	echo 2.\) String1
	echo 3.\) String2 
elif ! [ -e $1 ] 
then 
	echo File \"$1\" does not exist.
elif ! [ -s $1 ]
then
	echo The file \"$1\" is empty.
elif ! [ -r $1 ]
then
	echo The read permission of the file \"$1\" in not provided.
else 
	grep -e  "$2"  $1 | grep -e  "$3"  	
	
fi	
