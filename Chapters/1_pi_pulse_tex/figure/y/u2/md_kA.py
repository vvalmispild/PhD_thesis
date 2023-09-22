#!/usr/bin/env python 
#import h5py
import os, numpy as np 
import subprocess
import re
import shutil
import sys, glob
import time
#from time import sleep




h=0.01
time=00
ttmax=1000
U=2
'''
with open('contur3d_1_png.plt', 'r') as  file:
 o = file.read()

 o = o.replace("set out ''", "set out '"+str(time)+".jpg'")
 o = o.replace("splot '' u 3:4:2 title '' w l linestyle 8 lw 0.5", "splot 'BZ_"+str(time)+".dat' u 3:4:2 title 't="+str(time_1)+"' w l linestyle 8 lw 0.5")

with open('contur3d_2_png.plt', 'w') as file:
 file.write(o)
'''
while time <= ttmax:

	time_1=time*h
	proc = subprocess.Popen(['gnuplot','-p'], 
		                shell=True,
		                stdin=subprocess.PIPE,
		                )
	proc.stdin.write('reset\n')
	proc.stdin.write('set terminal jpeg enhanced size 640,640 font "Times-Roman,22"\n')
	proc.stdin.write('set tics font "Times-Roman, 20"\n')
	proc.stdin.write('set surface\n')
	proc.stdin.write('set dgrid3d 64,64#90,90,4\n')	
	#proc.stdin.write('set title "U='+str(U)+'"\n')
	
	proc.stdin.write('set pm3d at bs interpolate 1,1\n')
	proc.stdin.write('set view 65, 25, 1.05, 1.2\n')
	proc.stdin.write('set style data lines\n')
	proc.stdin.write('set xlabel "k_x"\n')
	proc.stdin.write('set ylabel "k_y"\n')
	proc.stdin.write('set zlabel "n"  offset 2,-1\n')
	proc.stdin.write('set xrange[-3.1415:3.1415]\n')
	proc.stdin.write('set yrange[-3.1415:3.1415]\n')
        #proc.stdin.write('set xrange[*:*]\n')
	#proc.stdin.write('set yrange[*:*]\n')
	proc.stdin.write('set zrange [0:1]\n')
	proc.stdin.write('set cbrange [0:1]\n')
	proc.stdin.write('set style line 8 linetype 1 linecolor rgb "white"\n')
	proc.stdin.write('set xtics ("{/Symbol -p}" -3.14, "0" 0, "{/Symbol p}" 3.1415)\n')
	proc.stdin.write('set ytics ("{/Symbol -p}" -3.14, "0" 0, "{/Symbol p}" 3.1415)\n')
	#proc.stdin.write('set linestyle  1 lt 1 lw 6\n')
	proc.stdin.write('set out "'"./md_A_jpg/A_"+str(time)+'.jpg"\n')
	proc.stdin.write('splot "A_BZ_'+str(time)+'.dat" u 5:6:2 title "XY, t='+str(time_1)+'" w l linestyle 8 lw 0.5 \n')
	proc.stdin.write('quit\n') #close the gnuplot window


	time = time + 10
#subprocess.call([gnuplot './contur3d_2_png.plt'])
#sleep(1.1) # Time in seconds.
#subprocess.call(["./contur3d_2_png.plt"])
