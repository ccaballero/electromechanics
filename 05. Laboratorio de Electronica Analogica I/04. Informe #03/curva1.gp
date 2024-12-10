set terminal epslatex size 4.4in,2.8in font ',10'
set output 'curva1.tex'

set grid

set xzeroaxis
set xtics axis
set xtics 0.1
set format x ''
set xrange [-1.2:0]

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [0:20]

set xlabel '$V_{\text{GS}}[V]$'
set ylabel '$I_{\text{D}}[mA]$'

set label '-1.135' at -1.2,-1
set label '-1.098' at -1.05,-1
set label '-1.037' at -0.9,-1

set label '18.5' at 0.03,18.5
set label '17.7' at 0.03,17.5
set label '15.8' at 0.03,16

plot ( ( -1.037<=x && x<=0) ? 15.8*(1-(x/-1.037))**2 : NaN) linetype 8 linewidth 2 notitle
plot ( ( -1.098<=x && x<=0) ? 17.7*(1-(x/-1.098))**2 : NaN) linetype 8 linewidth 2 notitle
plot ( ( -1.135<=x && x<=0) ? 18.5*(1-(x/-1.135))**2 : NaN) linetype 8 linewidth 2 notitle

