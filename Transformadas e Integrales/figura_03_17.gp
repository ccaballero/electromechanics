set terminal epslatex size 2.5in,1.5in font ',8'
set output 'figura_03_17.tex'
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

set label '$t$'             at  4.7 , 0
set label '$f^\prime(t)$'   at -1.45, 4.3
set label '$t_0$'           at  0.9 ,-0.6
set label '$\delta(t-t_0)$' at  1.4 , 2.0

set arrow from 1,0 to 1,4, graph 1 linetype 7 linewidth 1 head

plot ( (0<=x && x<=0) ? 0 : NaN) linetype 7 linewidth 1 notitle

