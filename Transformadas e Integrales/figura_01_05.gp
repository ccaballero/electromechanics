set terminal epslatex size 4.4in,1.8in font ',8'
set output 'figura_01_05.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-1.5*pi:6.5*pi]
set arrow from -1.5*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1.5:3.5]
set arrow from 0,-1.5 to first 0, graph 1 filled head

set arrow from 2*pi,0 to 2*pi,1.70 nohead linetype 0 linewidth 2
set arrow from 3*pi,0 to 3*pi,2.75 nohead linetype 0 linewidth 2
set arrow from 5*pi,0 to 5*pi,1.70 nohead linetype 0 linewidth 2
set arrow from 6*pi,0 to 6*pi,2.75 nohead linetype 0 linewidth 2

set label '$t$'    at 6.75*pi,0
set label '$f(t)$' at 0.75   ,3.5

set label '$a$' at 3*pi-3.25,-0.45
set label '$T$' at 4*pi-3.45,-0.45
set label '$b$' at 6*pi-3.45,-0.45

set label '$\int_{0}^{T} f(t) dt$' at 1*pi-1.25,2.6
set label '$\int_{a}^{b} f(t) dt$' at 4*pi-1.25,3.2

set arrow from 1.25*pi,2.05 to 1.5*pi,0.5
set arrow from 4.25*pi,2.75 to 3.5*pi,0.5

set arrow from 2*pi,-1 to 5*pi,-1 heads linetype 2 linewidth 2
set label '$T$' at 4*pi-2,-1.35

plot ( ( 0*pi<=x && x<=2*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) with filledcurves above y1=0 fillstyle pattern 4 notitle
plot ( ( 2*pi<=x && x<=3*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) with filledcurves above y1=0 fillstyle pattern 1 notitle
plot ( ( 3*pi<=x && x<=5*pi) ? 1.5+0.5*sin(-0.55*(x-3*pi)) : NaN) with filledcurves above y1=0 fillstyle pattern 5 notitle

plot ( (-3*pi<=x && x<=0*pi) ? 1.5+0.5*sin(-0.55*(x+3*pi)) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 0*pi<=x && x<=3*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 3*pi<=x && x<=6*pi) ? 1.5+0.5*sin(-0.55*(x-3*pi)) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 6*pi<=x && x<=9*pi) ? 1.5+0.5*sin(-0.55*(x-6*pi)) : NaN) linetype 7 linewidth 3 notitle

