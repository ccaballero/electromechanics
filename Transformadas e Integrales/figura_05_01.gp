set terminal epslatex size 2.2in,1.5in font ',8'
set output 'figura_05_01.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-4*pi:4*pi]
set arrow from -4.5*pi,0 to 4.5*pi,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics pi
set format y ''
set yrange [-0.5*pi:1.5*pi]
set arrow from 0,-0.5*pi to 0,2.0*pi, graph 1 filled head

set label '$t$'      at  4.70*pi,0
set label '$f(t)$'   at -1.45*pi,1.8*pi
set label '$f_1(t)$' at  1.45*pi,1.5*pi
set label '$f_2(t)$' at  0.25*pi,0.7*pi

set arrow from -3.0*pi,0 to -3.0*pi,0.75*pi nohead linetype 0 linewidth 2
set arrow from -1.0*pi,0 to -1.0*pi,0.58*pi nohead linetype 0 linewidth 2
set arrow from  1.0*pi,0 to  1.0*pi,0.35*pi nohead linetype 0 linewidth 2
set arrow from  3.0*pi,0 to  3.0*pi,1.25*pi nohead linetype 0 linewidth 2

plot ( (-3.0*pi<=x && x<=3*pi) ? pi+sin(0.25*x) : NaN) linetype 7 linewidth 1 notitle
plot ( (-1.0*pi<=x && x<=1*pi) ? (0.45*pi)+(0.125*(-x)) : NaN) linetype 7 linewidth 1 notitle

