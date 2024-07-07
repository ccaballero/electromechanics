set terminal epslatex size 4in,2in font ',8'
set output 'figura_06_01.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-0.5:10]
set arrow from -0.5,0 to 10.5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-0.5:1.5]
set arrow from 0,-0.5 to 0,1.75, graph 1 filled head

set label '$t$'           at  10.8,0
set label '$f(t)$'     at -1.2,1.7
set label '$f(0)$'   at  -1.4,0.35
set label '$f(\infty)$'   at  -1.6,0.98

set label 'Valor final en $t\ggg0$' at 5.00,1.2
set label 'Valor inicial en $t=0$'  at 0.90,0.35

set arrow from 0,1 to 10,1 nohead linetype 0 linewidth 2

plot ( (0<=x && x<=10) ? 1-1/(x+1.5) : NaN) linetype 7 linewidth 1 notitle

