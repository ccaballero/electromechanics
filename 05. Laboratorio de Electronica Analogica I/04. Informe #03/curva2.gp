set terminal epslatex size 4.0in,2.5in font ',10'
set output 'curva2.tex'

#set grid

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [0:9]

set yzeroaxis
set ytics axis
set ytics 0.01
set format y ''
set yrange [0:0.1]

set xlabel '$V_{\text{CE}}[V]$'
set ylabel '$I_{\text{C}}[mA]$'

set label '$I_{\text{B}} = 125.6[\mu{A}]$' at 9.2,0.0366
set label '$I_{\text{B}} = 244.2[\mu{A}]$' at 9.2,0.07377

set label '$0.675[V]$' at 0.8,0.095
set label '$4.63[V]$'  at 4.8,0.095
set label '$9[V]$'     at 9.2,0.095

set arrow from 0.675,0 to 0.675,0.1 nohead linetype 0 linewidth 2
set arrow from 4.63,0 to 4.63,0.1 nohead linetype 0 linewidth 2
set arrow from 0,0.07377 to 9,0.07377 nohead linetype 0 linewidth 2

plot ( ( 0.675<=x && x<=9) ? 0.0366 : NaN) linetype 8 linewidth 2 notitle
plot ( ( 0<=x && x<=9) ? (9-x)/122 : NaN) linetype 8 linewidth 2 notitle

