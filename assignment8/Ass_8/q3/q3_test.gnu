#!/usr/bin/gnuplot

set term postscript eps enhanced color 22
set output 'q3.eps'

set style data histograms
set boxwidth 1 relative
set style histogram errorbars lw 2 
set multiplot

set size 1,1
set origin 0,0
set yrange [0:100]
set datafile separator " "
set xtics border in scale 0,0 nomirror  offset character 0, 0, 0
set style fill pattern 1 border -1

set title "Analysis of {/Symbol a}, {/Symbol b}"
set xlabel "Groups"
set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Time"

plot \
newhistogram "Group 1" lt 2 fs pattern 1, \
'first_data.txt' using 2:3:4:xtic(1) t "Data1"   , '' u 5:6:7 t "Data2"  , \
newhistogram "group 2" lt 2 fs pattern 1, \
'first_data.txt' using 8:9:10:xtic(1) notitle, '' u 11:12:13 notitle

unset multiplot

