set terminal epslatex size 4.4in,1.3in font ',8'
set output 'figura_01_06.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [0:4.25*pi]
set arrow from 0,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-3.5:5.5]
set arrow from 0,-3.5 to first 0, graph 1 filled head

set label '$t$'    at 4.35*pi,0
set label '$f(t)$' at 0.35   ,5.5

set label '$ \pi$' at 1*pi-0.15,-0.75
set label '$2\pi$' at 2*pi-0.15,-0.75
set label '$3\pi$' at 3*pi-0.15,-0.75
set label '$4\pi$' at 4*pi-0.15,-0.75

set label '$f(t)=\sen(4t)+\sen(\frac{3}{2}t)+\sen(10t)\,dt$' at 1*pi,4.8

plot ( ( 0*pi<=x && x<=4*pi) ? sin(4*x)+sin(1.5*x)+sin(10*x) : NaN) linetype 7 linewidth 1 notitle

