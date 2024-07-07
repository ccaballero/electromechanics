set terminal epslatex size 1.5in,1.5in font ',8'
set output 'figura_03_11.tex'
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
set yrange [-1:3]
set arrow from 0,-1 to 0,3.5, graph 1 filled head

set arrow from -1,0 to -1,2 nohead linetype 0 linewidth 2
set arrow from  1,0 to  1,2 nohead linetype 0 linewidth 2

set label '$t$'    at 3,0
set label '$f(t)$' at 0.45,3.4

set label '$\xi$'  at  0.9,-0.6
set label '$-\xi$' at -1.5,-0.6
set label '$\dfrac{1}{2\xi}$' at 1.4,2.0

plot ( ( -1<=x && x<=1) ? 2 : NaN) linetype 7 linewidth 1 notitle

