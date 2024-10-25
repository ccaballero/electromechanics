set terminal epslatex size 1.5in,1.2in font ',8'
set output 'figura_04_02.tex'
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
set yrange [-1:2]
set arrow from 0,-1 to 0,2.5, graph 1 filled head

set arrow from -1,0 to -1,1 nohead linetype 0 linewidth 2
set arrow from  1,0 to  1,1 nohead linetype 0 linewidth 2

set label '$t$'    at 3,0
set label '$f(t)$' at 0.45,2.4

set label '$ a$' at  0.9,-0.6
set label '$-a$' at -1.5,-0.6
set label '$1$'  at -0.5, 1.4

plot ( ( -1<=x && x<=1) ? 1 : NaN) linetype 7 linewidth 1 notitle

