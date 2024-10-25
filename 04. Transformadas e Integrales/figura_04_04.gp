set terminal epslatex size 2.2in,1.5in font ',8'
set output 'figura_04_04.tex'
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

set label '$\omega$'         at  4.70*pi,0
set label '$\theta(\omega)$' at -1.75*pi,1.8*pi

set arrow from -4.0*pi,0 to -4.0*pi,pi nohead linetype 0 linewidth 2
set arrow from -3.5*pi,0 to -3.5*pi,pi nohead linetype 0 linewidth 2
set arrow from -3.0*pi,0 to -3.0*pi,pi nohead linetype 0 linewidth 2
set arrow from -2.5*pi,0 to -2.5*pi,pi nohead linetype 0 linewidth 2
set arrow from -2.0*pi,0 to -2.0*pi,pi nohead linetype 0 linewidth 2
set arrow from -1.5*pi,0 to -1.5*pi,pi nohead linetype 0 linewidth 2
set arrow from -1.0*pi,0 to -1.0*pi,pi nohead linetype 0 linewidth 2
set arrow from -0.5*pi,0 to -0.5*pi,pi nohead linetype 0 linewidth 2
set arrow from  0.5*pi,0 to  0.5*pi,pi nohead linetype 0 linewidth 2
set arrow from  1.0*pi,0 to  1.0*pi,pi nohead linetype 0 linewidth 2
set arrow from  1.5*pi,0 to  1.5*pi,pi nohead linetype 0 linewidth 2
set arrow from  2.0*pi,0 to  2.0*pi,pi nohead linetype 0 linewidth 2
set arrow from  2.5*pi,0 to  2.5*pi,pi nohead linetype 0 linewidth 2
set arrow from  3.0*pi,0 to  3.0*pi,pi nohead linetype 0 linewidth 2
set arrow from  3.5*pi,0 to  3.5*pi,pi nohead linetype 0 linewidth 2
set arrow from  4.0*pi,0 to  4.0*pi,pi nohead linetype 0 linewidth 2

plot ( (-4.0*pi<=x && x<=-3.5*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( (-3.5*pi<=x && x<=-3.0*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( (-3.0*pi<=x && x<=-2.5*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( (-2.5*pi<=x && x<=-2.0*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( (-2.0*pi<=x && x<=-1.5*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( (-1.5*pi<=x && x<=-1.0*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( (-1.0*pi<=x && x<=-0.5*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( (-0.5*pi<=x && x<= 0.5*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 0.5*pi<=x && x<= 1.0*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( ( 1.0*pi<=x && x<= 1.5*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 1.5*pi<=x && x<= 2.0*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( ( 2.0*pi<=x && x<= 2.5*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 2.5*pi<=x && x<= 3.0*pi) ? pi : NaN) linetype 7 linewidth 1 notitle
plot ( ( 3.0*pi<=x && x<= 3.5*pi) ?  0 : NaN) linetype 7 linewidth 1 notitle
plot ( ( 3.5*pi<=x && x<= 4.0*pi) ? pi : NaN) linetype 7 linewidth 1 notitle

