#!/usr/bin/gnuplot -persist
#set terminal png nocrop size 600, 500
set terminal png nocrop size 1024, 800
set output 'output/anagrams2.png'
set style fill solid 1.00 border 0
set title "Results"
set xlabel "Run"
set ylabel "Seconds"
set datafile separator ","
#set yrange [0.000002:0.000003]
#set xrange [0:200]
set key autotitle columnhead
plot 'output/anagrams2.csv' using 0:1 smooth bezier
