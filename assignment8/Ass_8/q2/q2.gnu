#!/usr/bin/gnuplot

set term postscript eps enhanced color 22
set output 'q2_hist.eps'
set style data histograms
set style histogram errorbars lw 1 
set origin 0,0
set boxwidth 3 absolute
set yrange [0:50]
set datafile separator " "
set style fill pattern 1 border -1

set title "Different Distributions"
set xlabel "Values" 
set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Frequency" 

plot \
newhistogram "Distribution 1" lt 2 fs pattern 1, \
'Rnorm2.txt' using 2:3:4:xtic(1) t "Data"   , \
newhistogram "Distribution 2" lt 2 fs pattern 1, \
'Rnorm2.txt' using 5:6:7:xtic(1) notitle


