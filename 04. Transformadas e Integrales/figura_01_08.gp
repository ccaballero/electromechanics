set terminal epslatex size 3in,3in font ',8'
set output 'figura_01_08.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 0.5*pi
set format x ''
set xrange [-1.75*pi:1.75*pi]
set arrow from -1.75*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-10:10]
set arrow from 0,-10 to first 0, graph 1 filled head

set arrow from 0.5*pi,-10 to 0.5*pi,10 nohead linetype 0 linewidth 2

set label '$t$'    at  2*pi,0
set label '$f(t)$' at -0.35,11

set label '$\frac{\pi}{2}$' at 0.5*pi-0.3,-1.5
set label '$\pi$'   at 1  *pi-0.3,-1.5

plot ( ( 0<=x && x<=pi) ? tan(x) : NaN) linetype 7 linewidth 1 notitle

