#! /usr/bin/gnuplot -persist

#set term png enhanced font 'Times New Roman, 12'
set terminal postscript eps enhanced color solid rounded font "Times-Roman,32" size 6, 4
#set terminal postscript eps enhanced color solid
#set terminal postscript eps color enhanced
#set terminal postscript enhanced
set output 'Etot.eps'
set autoscale
set title "Total energy, U=0, A_{max}=4.44, {/Symbol w}=1, FWHM=1"

set xlabel "Time"
set bmargin 4
set ylabel "Total energy"
#set xtics border mirror norotate 10
#set xtics border mirror norotate 0.2
#set key outside
#set key left
set key left bottom
set key left top
#set style line 1 lt 1 pt 9
#set style line 2 lt 3 pt 7
#set style line 3 lt 2 pt 5
set yrange [-2:2.0]
set xrange [0:*]
#set view 60, 30, 1, 1
set arrow from 0.0,0.0 to 14.0, 0.0 nohead lt 8 lc 0 lw 1

plot "./1/E_tot.out" using ($1*0.01):5 title "{/Symbol f}_y=0" w l linestyle 1 lw 3, \
"./2/E_tot.out" using ($1*0.01):5 title "{/Symbol f}_y={/Symbol p}/6" w l linestyle 2 lw 3, \
"./3/E_tot.out" using ($1*0.01):5 title "{/Symbol f}_y={/Symbol p}/4" w l linestyle 3 lw 3, \
"./4/E_tot.out" using ($1*0.01):5 title "{/Symbol f}_y={/Symbol p}/3" w l linestyle 4 lw 3, \














#    EOF

