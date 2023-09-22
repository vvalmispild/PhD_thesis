#! /usr/bin/gnuplot -persist

#set term png enhanced font 'Times New Roman, 12'
set terminal postscript eps enhanced color solid rounded font "Times-Roman,32" size 6, 4
#set terminal postscript eps enhanced color solid
#set terminal postscript eps color enhanced
#set terminal postscript enhanced
set output 'Pulse_p.eps'
set autoscale
#set title ""

set xlabel ""
set bmargin 4
set ylabel ""
#set xtics border mirror norotate 10
#set xtics border mirror norotate 0.2
#set key bottom right
#set key top right
set key outside
#set key left top
#set style line 1 lt 1 pt 9
#set style line 2 lt 3 pt 7
#set style line 3 lt 2 pt 5

#set view 60, 30, 1, 1
set arrow from -3.1415,3.1415 to -3.1415, -3.1415 nohead lt 8 lc 7 lw 3
set arrow from -3.1415,-3.1415 to 3.1415, -3.1415 nohead lt 8 lc 7 lw 3
set arrow from 3.1415,-3.1415 to 3.1415, 3.1415 nohead lt 8 lc 7 lw 3
set arrow from 3.1415,3.1415 to -3.1415, 3.1415 nohead lt 8 lc 7 lw 3


#Point
set border linewidth 1.5
set pointsize 1.5
set style line 2 lc rgb '#0060ad' pt 7   # circle

set parametric
set size square

set xrange [-4.44:3.5]
set yrange [-4.44:3.5]

set style line 7 lc 7 lt 1 lw 1.5

set object circle at first 0.0,0.0 radius char 0.3 fillcolor rgb 'red' fillstyle solid noborder
set object circle at first -3.1415,-3.1415 radius char 0.3 fillcolor rgb 'red' fillstyle solid noborder

set label at 0.2, 0.2 "{/Symbol G}"
set label at -3.8,-3.6 "{/Symbol M}"


set label at 2.5,-3.7 "k_x" 
set label at -4.0,2.5 "k_y" 
set label at 0.8,2.5 "1-st BZ"

plot "./p_1.dat" u 2:3 title "{/Symbol f}_y={/Symbol p}/4" w l lw 3, \
"./p_2.dat" u 2:3 title "{/Symbol f}_y={/Symbol p}/3" w l lw 3, \
"./p_3.dat" u 2:3 title "{/Symbol f}_y=5{/Symbol p}/12" w l lw 3, \
"./p_4.dat" u 2:3 title "{/Symbol f}_y={/Symbol p}/2" w l lw 3, \



#    EOF

