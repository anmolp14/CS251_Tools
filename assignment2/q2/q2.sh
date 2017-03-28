#!/bin/bash

n=$1
m=$2
d=$3
f=$4
t=$5
g=$6
x1=$(seq $n | shuf )
x="$x1 "
j=1
while read p 
do
   p=$( echo  "scale=4 ; $p / 100" | bc )
   i=$( echo " $p * $n"| bc )
   i=$( echo "$i/1" | bc )
   stu=$( echo $x\   | egrep  -o  "^([0-9]+\s){$i}" )  
   x=$(echo $x\  | sed "s/$stu//")
   echo Day $j students: 
    echo "`echo $stu | tr ' ' '\n'` "
   j=$( expr $j + 1 )
done < $f	 


