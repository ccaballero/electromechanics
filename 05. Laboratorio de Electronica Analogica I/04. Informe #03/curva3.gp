set terminal epslatex size 4.5in,2.8in font ',10'
set output 'curva3.tex'

set grid

set xzeroaxis
set xtics axis
set xtics 0.5
set format x ''
set xrange [-1.1:1.1]

set yzeroaxis
set ytics axis
set ytics 2
set format y ''
set yrange [0:16]

set xlabel '$V_{\text{GS}}[V]$'
set ylabel '$I_{\text{D}}[mA]$'

set label '-1.04' at -1.1,-1
set label '-0.32' at -0.52,1
set label '-0.21' at -0.18,1
set label  '0.82' at 0.75,-1

set label '5.46' at 0.1,5.45
set label  '7.0' at 0.1,6.9
set label '7.58' at 0.1,8.0
set label '15.8' at 0.1,15.0

set arrow from -0.21,7 to 0,7     nohead linetype 0 linewidth 2
set arrow from -0.21,7 to -0.21,0 nohead linetype 0 linewidth 2

set arrow from -0.32,7.58 to 0,7.58  nohead linetype 0 linewidth 2
set arrow from -0.32,7.58 to -0.32,0 nohead linetype 0 linewidth 2

plot ( ( -1<=x && x<=0.82) ? 5.455-(6.6524*x) : NaN)        linetype 8 linewidth 2 notitle
plot ( ( -1.037<=x && x<=0) ? 15.8*(1-(x/-1.037))**2 : NaN) linetype 8 linewidth 2 notitle

