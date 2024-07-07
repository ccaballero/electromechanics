set terminal epslatex size 2.2in,1.5in font ',8'
set output 'figura_03_21.tex'
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

set label '$n\omega_0$' at  4.7 , 0
set label '$\theta_n$'  at -1.45, 4.3
set label '$-3\omega_0$'       at -3.9 ,-0.6
set label '$ -\omega_0$'       at -1.6 ,-0.6
set label '$  \omega_0$'       at  0.9 ,-0.6
set label '$ 3\omega_0$'       at  2.6 ,-0.6

set arrow from  0,0 to  0,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from  1,0 to  1,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from -1,0 to -1,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from  2,0 to  2,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from -2,0 to -2,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from  3,0 to  3,1, graph 1 linetype 7 linewidth 1 nohead
set arrow from -3,0 to -3,1, graph 1 linetype 7 linewidth 1 nohead

plot ( (0<=x && x<=0) ? 0 : NaN) linetype 7 linewidth 1 notitle

