set terminal epslatex size 3.8in,1.4in font ',8'
set output 'figura_03_03.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-2.5*pi:4.5*pi]
set arrow from -2.5*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1.5:1.5]
set arrow from 0,-1.5 to first 0, graph 1 filled head

set arrow from -2*pi,-1 to -2*pi,1 nohead linetype 0 linewidth 2
set arrow from  2*pi,-1 to  2*pi,1 nohead linetype 0 linewidth 2
set arrow from  4*pi,-1 to  4*pi,1 nohead linetype 0 linewidth 2

set label '$t$'    at 4.75*pi,0
set label '$f(t)$' at 0      ,1.75

set arrow from 0,-1.25 to 2*pi,-1.25 heads linetype 2 linewidth 2
set label '$T$' at 0.92*pi,-1.6

plot ((-2*pi<=x && x<=-1*pi) ? sin(x) : NaN) linetype 6 linewidth 3 notitle
plot ((-1*pi<=x && x<= 0*pi) ? 0      : NaN) linetype 6 linewidth 3 notitle
plot (( 0*pi<=x && x<= 1*pi) ? sin(x) : NaN) linetype 6 linewidth 3 notitle
plot (( 1*pi<=x && x<= 2*pi) ? 0      : NaN) linetype 6 linewidth 3 notitle
plot (( 2*pi<=x && x<= 3*pi) ? sin(x) : NaN) linetype 6 linewidth 3 notitle
plot (( 3*pi<=x && x<= 4*pi) ? 0      : NaN) linetype 6 linewidth 3 notitle

