set terminal epslatex size 3in,2in font ',8'
set output 'figura_02_02.tex'
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
set arrow from 0,-2.5 to 0,2.5, graph 1 filled head

set arrow from  2, 0 to  2, 1 nohead linetype 0 linewidth 2
set arrow from -2, 0 to -2,-1 nohead linetype 0 linewidth 2
set arrow from  0, 1 to  2, 1 nohead linetype 0 linewidth 2
set arrow from  0,-1 to -2,-1 nohead linetype 0 linewidth 2

set label '$t$'    at  5.3,0
set label '$f(t)$' at 0.45,2.2

set label '$-t_1$'            at -2.4, 0.3
set label '$ t_1$'            at  1.9,-0.3
set label '$-f(t_1)=f(-t_1)$' at  0.5,-1.0

plot ( ( -3<=x && x<=3) ? (0.125*x*x*x) : NaN) linetype 7 linewidth 1 notitle

