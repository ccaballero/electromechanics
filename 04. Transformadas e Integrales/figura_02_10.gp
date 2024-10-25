set terminal epslatex size 4.4in,1.8in font ',8'
set output 'figura_02_10.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-1.5*pi:6.5*pi]
set arrow from -1.5*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1.5:3.5]
set arrow from 0,-1.5 to first 0, graph 1 filled head

set arrow from -1*pi,0 to -1*pi,0.80 nohead linetype 0 linewidth 2
set arrow from  2*pi,0 to  2*pi,0.80 nohead linetype 0 linewidth 2
set arrow from  3*pi,0 to  3*pi,2.18 nohead linetype 0 linewidth 2
set arrow from  5*pi,0 to  5*pi,0.80 nohead linetype 0 linewidth 2
set arrow from  6*pi,0 to  6*pi,2.18 nohead linetype 0 linewidth 2

set label '$t$'    at 6.75*pi,0
set label '$f(t)$' at 0.75   ,3.5
set label '$M$'    at 2*pi-0.43,-0.45

set arrow from 0,-1 to 3*pi,-1 heads linetype 2 linewidth 2
set label '$T$' at 1.42*pi,-1.5

plot ( (-3*pi<=x && x<=-1*pi) ? 1.5+0.75*cos(-0.55*(x+3*pi)) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 0*pi<=x && x<= 2*pi) ? 1.5+0.75*cos(-0.55*(x     )) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 3*pi<=x && x<= 5*pi) ? 1.5+0.75*cos(-0.55*(x-3*pi)) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 6*pi<=x && x<= 8*pi) ? 1.5+0.75*cos(-0.55*(x-6*pi)) : NaN) linetype 7 linewidth 3 notitle

