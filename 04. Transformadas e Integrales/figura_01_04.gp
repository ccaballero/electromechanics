set terminal epslatex size 4.4in,1.8in font ',8'
set output 'figura_01_04.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-2*pi:3.25*pi]
set arrow from -2*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1.5:2.75]
set arrow from 0,-1.5 to first 0, graph 1 filled head
 
set arrow from -1.5*pi,0 to -1.5*pi,1.20 nohead linetype 0 linewidth 2
set arrow from  1.5*pi,0 to  1.5*pi,1.20 nohead linetype 0 linewidth 2
set arrow from  3  *pi,0 to  3  *pi,2.75 nohead linetype 0 linewidth 2

set label '$t$'    at 3.5*pi,0
set label '$f(t)$' at 0.5   ,3

set label '$-\frac{T}{2}$' at -1.65*pi-0.15,-0.45
set label '$ \frac{T}{2}$' at  1.50*pi-0.15,-0.45
set label '$T$'            at  3   *pi-0.10,-0.45

set label '$\int_{-\frac{T}{2}}^{\frac{T}{2}} f(t) dt$' at -1.5*pi-1.5,2.6
set label '$\int_{0}^{T} f(t) dt$'      at  1.5*pi-2.5,2.6

set arrow from -1.2*pi,2.2 to 0     ,0.5
set arrow from  1.2*pi,2.2 to 1.5*pi,0.5

plot ( ( -1.5*pi<=x && x<=0  *pi) ? 1.5+0.5*sin(-0.55*(x+3*pi)) : NaN) with filledcurves above y1=0 fillstyle pattern 4 notitle
plot ( (  0  *pi<=x && x<=1.5*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) with filledcurves above y1=0 fillstyle pattern 1 notitle
plot ( (  1.5*pi<=x && x<=3.0*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) with filledcurves above y1=0 fillstyle pattern 5 notitle

plot ( (-3*pi<=x && x<=0*pi) ? 1.5+0.5*sin(-0.55*(x+3*pi)) : NaN) linetype 7 linewidth 3 notitle
plot ( ( 0*pi<=x && x<=3*pi) ? 1.5+0.5*sin(-0.55*(x     )) : NaN) linetype 7 linewidth 3 notitle

