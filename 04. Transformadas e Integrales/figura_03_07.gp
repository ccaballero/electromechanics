set terminal epslatex size 4in,1.5in font ',8'
set output 'figura_03_07.tex'
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
set yrange [-0.5:2.5]
set arrow from 0,-0.5 to 0,2.5, graph 1 filled head

set label '$t$'    at  6.5,0
set label '$f(t)$' at -0.2,2.9
set label '$t_0$'  at  1.4,-0.3
set label '$k$'    at -0.5,1.5

set arrow from 0  ,1.5 to 5  ,1.5 nohead linetype 0 linewidth 2
set arrow from 1.5,0   to 1.5,1.5 nohead linetype 0 linewidth 2

plot ( (1.5<=x && x<=5)   ? 1.5 : NaN) linetype 7 linewidth 1 notitle

