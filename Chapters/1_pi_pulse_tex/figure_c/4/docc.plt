#! /usr/bin/gnuplot -persist

#set term png enhanced font 'Times New Roman, 12'
set terminal postscript eps enhanced color solid rounded font "Times-Roman,32" size 6, 4
#set terminal postscript eps enhanced color solid
#set terminal postscript eps color enhanced
#set terminal postscript enhanced
set output 'docc.eps'
set autoscale
set title "Double occupancy, U=2, A_{max}=4.44, FWHM=1"
set multiplot
set xlabel "Time"
set bmargin 4
set ylabel "Double occupancy"
#set xtics border mirror norotate 10
#set xtics border mirror norotate 0.2
#set key outside
#set key left
set key right bottom
#set key left top
#set style line 1 lt 1 pt 9
#set style line 2 lt 3 pt 7
#set style line 3 lt 2 pt 5
set yrange [0.19:0.365]
set xrange [0:*]
#set view 60, 30, 1, 1
set arrow from 0.0,0.25 to 14.0, 0.25 nohead lt 8 lc 0 lw 1

plot "./E_1.out" using ($1*0.01):2 title "{/Symbol w}=1.0" w l linestyle 1 lw 3, \
"./E_2.out" using ($1*0.01):2 title "{/Symbol w}=2.0" w l linestyle 2 lw 3, \
"./E_3.out" using ($1*0.01):2 title "{/Symbol w}=3.0" w l linestyle 3 lw 3, \
"./E_4.out" using ($1*0.01):2 title "{/Symbol w}=4.0" w l linestyle 4 lw 3, \


set size 0.46,0.65
set origin 0.115,0.225
set xrange [6:8]
set yrange [0.2:0.36]
set lmargin 5
unset xlabel
unset ylabel
unset arrow
unset title
#unset xtics
unset ytics

#set arrow from 6.0,0.25 to 8.0, 0.25 nohead lt 8 lc 0 lw 

plot "./E_1.out" using ($1*0.01):2 notitle "{/Symbol w}=1.0" w l linestyle 1 lw 3, \
"./E_2.out" using ($1*0.01):2 notitle "{/Symbol w}=2.0" w l linestyle 2 lw 3, \
"./E_3.out" using ($1*0.01):2 notitle "{/Symbol w}=3.0" w l linestyle 3 lw 3, \
"./E_4.out" using ($1*0.01):2 notitle "{/Symbol w}=4.0" w l linestyle 4 lw 3, \

unset multiplot




#    EOF

