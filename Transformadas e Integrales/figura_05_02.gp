set terminal epslatex size 2.2in,1.5in font ',8'
set output 'figura_05_02.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-4*pi:6*pi]
set arrow from -4.5*pi,0 to 6.5*pi,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics pi
set format y ''
set yrange [-0.5*pi:1.5*pi]
set arrow from 0,-0.5*pi to 0,2.0*pi, graph 1 filled head

set label '$t$'           at  6.70*pi,0
set label '$f(\tau)$'     at -1.75*pi,1.8*pi
set label '$f_1(\tau)$'   at  1.45*pi,1.5*pi
set label '$f_2(-\tau)$'  at -0.80*pi,0.80*pi
set label '$f_2(t-\tau)$' at  4.35*pi,0.80*pi

set arrow from -3.0*pi,0 to -3.0*pi,0.75*pi nohead linetype 0 linewidth 2
set arrow from -1.0*pi,0 to -1.0*pi,0.35*pi nohead linetype 0 linewidth 2
set arrow from  1.0*pi,0 to  1.0*pi,0.58*pi nohead linetype 0 linewidth 2
set arrow from  2.0*pi,0 to  2.0*pi,0.35*pi nohead linetype 0 linewidth 2
set arrow from  3.0*pi,0 to  3.0*pi,1.25*pi nohead linetype 0 linewidth 2
set arrow from  4.0*pi,0 to  4.0*pi,0.58*pi nohead linetype 0 linewidth 2

set arrow from 0,0.45*pi to 3*pi,0.45*pi nohead linetype 0 linewidth 2

set arrow from -1*pi,-0.85 to 2*pi,-0.85 heads linetype 2 linewidth 2
set label '$t$' at 0.62*pi,-1.5

plot ( ( 2.0*pi<=x && x<=3*pi) ? pi+sin(0.25*x) : NaN) with filledcurves above y1=0 fillstyle pattern 4 notitle
plot ( ( 2.0*pi<=x && x<=3*pi) ? (0.45*pi)+(0.125*(x-3*pi)) : NaN) with filledcurves above y1=0 fillstyle pattern 1 notitle

plot ( (-3.0*pi<=x && x<=3*pi) ? pi+sin(0.25*x) : NaN) linetype 7 linewidth 1 notitle
plot ( (-1.0*pi<=x && x<=1*pi) ? (0.45*pi)+(0.125*(x)) : NaN) linetype 7 linewidth 1 notitle
plot ( ( 2.0*pi<=x && x<=4*pi) ? (0.45*pi)+(0.125*(x-3*pi)) : NaN) linetype 7 linewidth 1 notitle

