set terminal epslatex size 3in,2in font ',8'
set output 'figura_03_10.tex'
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
set yrange [-1:6]
set arrow from 0,-1.5 to 0,6.5, graph 1 filled head

set arrow from 1,0 to 1,2 nohead linetype 0 linewidth 2
set arrow from 3,0 to 3,2.4 nohead linetype 0 linewidth 2

set label '$t$'    at 5.3 ,0
set label '$f(t)$' at 0.45,6.4

set label '$t_1$'                        at  0.9,-0.6
set label '$t_2$'                        at  2.9,-0.6
set label '$\phi(t)(u(t-t_1)-u(t-t_2))$' at  1.0, 3.5

plot ( (  1<=x && x<=3) ? (0.125*(x-1)*(x-1))+2 : NaN) linetype 7 linewidth 1 notitle

