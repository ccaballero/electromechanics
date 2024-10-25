set terminal epslatex size 4.4in,1.8in font ',8'
set output 'figura_01_07.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-0.5:5.5]
set arrow from -0.5,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-3.5:3.5]
set arrow from 0,-3.5 to first 0, graph 1 filled head

set arrow from 2,-3 to 2,3 nohead linetype 0 linewidth 2
set arrow from 3,-3 to 3,3 nohead linetype 0 linewidth 2
set arrow from 5,-3 to 5,3 nohead linetype 0 linewidth 2

set label '$t$'    at 6-0.25,0
set label '$f(t)$' at -0.15 ,4

set label '$t_1$' at 2-0.05,-0.75
set label '$t_2$' at 3-0.05,-0.75
set label '$T$'   at 5-0.05,-0.75

set label 'discontinuidad'   at 3,3.2
set label 'extremo relativo' at 3.5,2.2

set arrow from 2.8,3 to 2,2.5
set arrow from 4,1.5 to 4,0

plot ( ( 0<=x && x<=2) ?           x +1 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 2<=x && x<=3) ?        -4*x+10 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 3<=x && x<=5) ? -3*x*x+24*x-48 : NaN) linetype 7 linewidth 1 notitle

