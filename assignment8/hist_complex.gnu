#!/usr/bin/gnuplot

set term postscript eps enhanced color 22
set output 'hist_complex.eps'

set style data histograms
set style histogram rowstacked title  offset character 0, 1, 0
set key left
set boxwidth 1 relative
#set style histogram cluster gap 1
#set style fill solid 1.0 border -1

set multiplot

set size 1,1
set origin 0,0
set yrange [0:1]
set datafile separator " "
set xtics border in scale 0,0 nomirror rotate by -90  offset character 0, 0, 0 
set style fill pattern 1 border -1

set title "Cardinality: n=50k, d=4, {/Symbol e}=0.05, Ind."
set xlabel "No. of Grid Partitions" 
set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Ratio over n" 

plot \
newhistogram "g=2" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 2:xtic(1) t "Parameter A"   , '' u 3 t "Parameter B"  , \
newhistogram "g=3" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 4:xtic(1) notitle, '' u 5 notitle, \
newhistogram "g=5" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 6:xtic(1) notitle, '' u 7 notitle, \
newhistogram "g=7" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 8:xtic(1) notitle, '' u 9 notitle, \
newhistogram "g=8" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 10:xtic(1) notitle, '' u 11 notitle, \
newhistogram "g=10" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 12:xtic(1) notitle, '' u 13 notitle, \
newhistogram "g=25" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 14:xtic(1) notitle, '' u 15 notitle

set size 0.65,0.45
set origin 0.1,0.35
set title ""
unset xtics
#set xrange [0.9:1.5]
set yrange [0:0.015]
set ytics 0,0.003, 0.015
set xlabel ""
set ylabel ""

set style histogram rowstacked title offset character 0, -1.5, 0

plot \
newhistogram "g=2" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 2:xtic(1) notitle, '' u 3 notitle, \
newhistogram "g=3" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 4:xtic(1) notitle, '' u 5 notitle, \
newhistogram "g=5" lt 2 fs pattern 1, \
'hist_complex_data.txt' using 6:xtic(1) notitle, '' u 7 notitle

unset multiplot

#replot
#set term x11
#set output

