#!/usr/bin/gnuplot

#set term postscript eps enhanced 12
set term postscript eps enhanced color 24

set output 'graph.eps'

set xlabel "{/Symbol e}"
set ylabel "Function"

set title "Different functions"

set datafile separator ","

set key top left
#set key 5,500
#
#set xrange [0:15]
#set yrange [0:3]
#
#set logscale y
#set nologscale x
#
#set noxtics
#set noytics
#set xtics 4
#set ytics 0.5
#
#set nolabel
set label "{/Symbol d} = 3" at 4,500

plot 'data.csv' u 1:2 title "Quadratic" w lp, 'data.csv' u 1:3 title "Cubic" w lp, 'data.csv' u 1:4 title "Exponential" w lp
#plot 'data.csv' u 1:($1*2) title "Double" w lp, 'data.csv' u 1:($1*$1) title "Quadratic" w lp
#plot 'data.csv' u 0:2 title "Legend" w lp	# 0 is the index column

