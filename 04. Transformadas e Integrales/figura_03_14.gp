set terminal epslatex size 1.5in,1.5in font ',8'
set output 'figura_03_14.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-2:2]
set arrow from -2.5,0 to 2.5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-3:1]
set arrow from 0,-3 to 0,1.5, graph 1 filled head

set label '$t$'    at 3,0
set label '$f(t)$' at 0.45,1.4

set label '$k\delta(t-t_0)$' at 1.4,-2.0
set label '$k<0$' at 1.4,-1.4
set label '$t_0$' at 0.9,0.4

set arrow from 1,0 to 1,-2, graph 1 linetype 7 linewidth 1 head

plot ( (0<=x && x<=0) ? 0 : NaN) linetype 7 linewidth 1 notitle

