set terminal epslatex size 5in,1.5in font ',8'
set output 'figura_04_01.tex'
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
set yrange [-1:3]
set arrow from 0,-1.25 to 0,3.5, graph 1 filled head

set arrow from -4,0 to -4,0.5 nohead linetype 0 linewidth 2
set arrow from -3,0 to -3,1.4 nohead linetype 0 linewidth 2
set arrow from -2,0 to -2,0.5 nohead linetype 0 linewidth 2
set arrow from -1,0 to -1,1.4 nohead linetype 0 linewidth 2
set arrow from  1,0 to  1,1.4 nohead linetype 0 linewidth 2
set arrow from  2,0 to  2,0.5 nohead linetype 0 linewidth 2
set arrow from  3,0 to  3,1.4 nohead linetype 0 linewidth 2
set arrow from  4,0 to  4,0.5 nohead linetype 0 linewidth 2
set arrow from  5,0 to  5,1.4 nohead linetype 0 linewidth 2

set label '$t$'    at  6.3,0
set label '$f(t)$' at 0.45,3.4

set label '$-2T$' at -4.5,-0.5
set label '$- T$' at -2.3,-0.5
set label '$  T$' at  1.9,-0.5
set label '$ 2T$' at  3.8,-0.5

plot ( ( -4<=x && x<=-3) ? (4.5*(x+3.5)*((x+3.5)*(x+3.5))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( ( -2<=x && x<=-1) ? (4.5*(x+1.5)*((x+1.5)*(x+1.5))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( (  0<=x && x<= 1) ? (4.5*(x-0.5)*((x-0.5)*(x-0.5))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( (  2<=x && x<= 3) ? (4.5*(x-2.5)*((x-2.5)*(x-2.5))+1) : NaN) linetype 7 linewidth 1 notitle
plot ( (  4<=x && x<= 5) ? (4.5*(x-4.5)*((x-4.5)*(x-4.5))+1) : NaN) linetype 7 linewidth 1 notitle

