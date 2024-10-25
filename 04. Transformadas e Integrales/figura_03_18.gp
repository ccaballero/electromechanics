set terminal epslatex size 2.5in,1.5in font ',8'
set output 'figura_03_18.tex'
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

set label '$t$'    at  4.7 , 0
set label '$f(t)$' at -1.45, 4.3
set label '$t_1$'  at  0.9 ,-0.6
set label '$t_2$'  at  2.9 ,-0.6
set label '$k_0$'  at -0.75, 0.5
set label '$k_1$'  at  1.25, 1.5
set label '$k_2$'  at  2.25, 1.5

set label 'salto de bajada' at 2,4
set label 'salto de subida' at 3,3

set arrow from 1,0 to 1,2.8 nohead linetype 0 linewidth 2
set arrow from 3,0 to 3,2.0 nohead linetype 0 linewidth 2

set arrow from 0,0 to 0,1, graph 1 linetype 6 linewidth 1 head
set arrow from 1,2.8 to 1,0, graph 1 linetype 6 linewidth 1 head
set arrow from 3,0 to 3,2, graph 1 linetype 6 linewidth 1 head

set arrow from 1.85,3.95 to 1.25,2, graph 1 linetype 0 linewidth 1 head
set arrow from 3.85,2.55 to 3.25,1.75, graph 1 linetype 0 linewidth 1 head

plot ( (  0<=x && x<=1) ? (2*(x*x))+1 : NaN) linetype 7 linewidth 1 notitle
plot ( (  1<=x && x<=3) ? -((x-2)*(x-2))+1 : NaN) linetype 7 linewidth 1 notitle
plot ( (  3<=x && x<=4) ? -(2*x)+8 : NaN) linetype 7 linewidth 1 notitle

