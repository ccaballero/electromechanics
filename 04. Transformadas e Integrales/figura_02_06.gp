set terminal epslatex size 3in,2.4in font ',8'
set output 'figura_02_06.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-4:4]
set arrow from -5,0 to 5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-2:2]
set arrow from 0,-2.25 to 0,2.5, graph 1 filled head

set arrow from -4,0    to -4,1.0 nohead linetype 0 linewidth 2
set arrow from -2,-1.0 to -2,1.5 nohead linetype 0 linewidth 2
set arrow from  2,-1.0 to  2,1.5 nohead linetype 0 linewidth 2
set arrow from  4,-1.5 to  4,0   nohead linetype 0 linewidth 2

set label '$t$'    at  5.3,0
set label '$f(t)$' at 0.45,2.4

set label '$-T$'           at -4.4,-0.3
set label '$-\frac{T}{2}$' at -2.4,-0.3
set label '$ \frac{T}{2}$' at  1.8,-0.3
set label '$T$'            at  3.9,-0.3

plot ( ( -4<=x && x<=-2) ? (0.125*(x+4)*(x+4))+1 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -2<=x && x<= 0) ? -((0.125*(x+2)*(x+2))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( (  0<=x && x<= 2) ? (0.125*x*x)+1 : NaN) linetype 7 linewidth 1 notitle
plot ( (  2<=x && x<= 4) ? -((0.125*(x-2)*(x-2))+1) : NaN) linetype 7 linewidth 1 notitle

