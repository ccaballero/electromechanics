set terminal epslatex size 2.5in,1.5in font ',8'
set output 'figura_03_19.tex'
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

set label '$t$'           at  4.7 , 0
set label '$f^\prime(t)$' at -1.45, 4.3
set label '$t_1$'         at  0.9 ,-0.6
set label '$t_2$'         at  2.9 ,-0.6
set label '$k_0\delta(t)$'      at 0.25, 0.5
set label '$-k_1\delta(t-t_1)$' at 1.25,-1.5
set label '$k_2\delta(t-t_2)$'  at 3.25, 1.25

set arrow from 0,0 to 0,1, graph 1 linetype 7 linewidth 1 head
set arrow from 1,0 to 1,-2.8, graph 1 linetype 7 linewidth 1 head
set arrow from 3,0 to 3,2, graph 1 linetype 7 linewidth 1 head

plot ( (0<=x && x<=0) ? 0 : NaN) linetype 7 linewidth 1 notitle

