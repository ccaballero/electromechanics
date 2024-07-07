set terminal epslatex size 2.5in,1.5in font ',8'
set output 'figura_03_16.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-4:4]
set arrow from -4.5,0 to 4.5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1:4]
set arrow from 0,-1.5 to 0,4.5, graph 1 filled head

set label '$t$'        at  4.7 , 0
set label '$f(t)$'     at -1.45, 4.3
set label '$1$'        at -0.75, 1
set label '$t_0$'      at  0.9 ,-0.6
set label '$u(t-t_0)$' at  1.4 , 1.4

set arrow from 0,1 to 1,1 nohead linetype 0 linewidth 2
set arrow from 1,0 to 1,1 nohead linetype 0 linewidth 2

plot ( (  1<=x && x<=4) ? 1 : NaN) linetype 7 linewidth 1 notitle

