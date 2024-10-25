set terminal epslatex size 3in,1.4in font ',8'
set output 'figura_04_05.tex'
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
set yrange [-1.5:1.5]
set arrow from 0,-1.5 to 0,1.5, graph 1 filled head

set label '$t$'    at  6.5, 0
set label '$f(t)$' at  0.5, 1.4
set label '$1$'    at -0.5, 1.0
set label '$-1$'   at  0.4,-1.0

plot ( (  0<=x && x<=5) ?  1 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -5<=x && x<=0) ? -1 : NaN) linetype 7 linewidth 1 notitle

