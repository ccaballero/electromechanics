set terminal epslatex size 4.0in,3.0in font ',8'
set output 'curve1.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-8:1]
set arrow from -9,0 to 2,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-3:20]
set arrow from 0,-4.0 to 0,22, graph 1 filled head

set label '$V_{\text{GS}}[V]$' at 2.0,-1.5
set label '$I_{\text{D}}[mA]$' at 0.25,22.0

set label '$-0.50$' at -1.10,-1.5
set label '$-1.129$' at -2.30,-1.5
set label '$-7.50$' at -7.80,-1.5

set label '$ 2.0$' at 0.25, 2.0
set label '$18.25$' at 0.25,18.25
set label '$20.0$' at 0.25,20.0

set label 'Curva mínima' at -2.7,2.0
set label 'Curva real'   at -2.4,8.0
set label 'Curva máxima' at -3.2,18.0

plot ( ( -0.5<=x && x<=0) ? 2*(1-(x/-0.5))**2 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -7.5<=x && x<=0) ? 20*(1-(x/-7.5))**2 : NaN) linetype 7 linewidth 1 notitle
plot ( ( -1.129<=x && x<=0) ? 18.25*(1-(x/-1.129))**2 : NaN) linetype 6 linewidth 1 notitle

