set terminal epslatex size 5in,2.4in font ',8'
set output 'figura_02_07.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-5:5]
set arrow from -6,0 to 6,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-3:3]
set arrow from 0,-3.25 to 0,3.5, graph 1 filled head

set arrow from -5,0    to -5,2.0 nohead linetype 0 linewidth 2
set arrow from -3,-2.0 to -3,2.0 nohead linetype 0 linewidth 2
set arrow from -1,-2.0 to -1,2.0 nohead linetype 0 linewidth 2
set arrow from  1,-2.0 to  1,2.0 nohead linetype 0 linewidth 2
set arrow from  3,-2.0 to  3,2.0 nohead linetype 0 linewidth 2
set arrow from  5,0    to  5,2.0 nohead linetype 0 linewidth 2

set label '$t$'    at  6.3,0
set label '$f(t)$' at 0.45,3.4

set label '$-T$'            at -4.4,-0.5
set label '$-\frac{3T}{4}$' at -3.4,-0.5
set label '$-\frac{T}{2}$'  at -2.4,-0.5
set label '$-\frac{T}{4}$'  at -1.4,-0.5
set label '$ \frac{T}{4}$'  at  0.9,-0.5
set label '$ \frac{T}{2}$'  at  1.8,-0.5
set label '$ \frac{3T}{4}$' at  2.8,-0.5
set label '$T$'             at  3.9,-0.5

plot ( ( -5<=x && x<=-3) ? ((x+4)*(x+4))+1 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -3<=x && x<=-1) ? -(((x+2)*(x+2))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( ( -1<=x && x<= 1) ? (x*x)+1 : NaN) linetype 7 linewidth 1 notitle
plot ( (  1<=x && x<= 3) ? -(((x-2)*(x-2))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( (  3<=x && x<= 5) ? ((x-4)*(x-4))+1 : NaN) linetype 7 linewidth 1 notitle

