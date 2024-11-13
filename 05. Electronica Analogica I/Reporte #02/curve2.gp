set terminal epslatex size 4.0in,4.0in font ',8'
set output 'curve2.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-1.5:4]
set arrow from -2,0 to 5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1:20]
set arrow from 0,-2 to 0,21, graph 1 filled head

set arrow from -0.56,4.603 to 0,4.603 nohead linetype 0 linewidth 2
set arrow from -0.56,0     to -0.56,4.603 nohead linetype 0 linewidth 2

set label '$V_{\text{GS}}[V]$' at 5.0,-1.1
set label '$I_{\text{D}}[mA]$' at 0.2,21.0

set label '$-1.129$' at -1.70,-1.1
set label '$-0.56$'  at -0.82,-1.1
set label '$4.041$'  at  3.90,-1.1

set label '$18.25$' at 0.25,18.25
set label '$4.603$' at 0.25,4.60

plot ( ( -1.129<=x && x<=0) ? 18.25*(1-(x/-1.129))**2 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -1.129<=x && x<=4.05) ? 4.041-((4.041*x)/4.05) : NaN) linetype 6 linewidth 1 notitle

