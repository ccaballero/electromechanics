set terminal epslatex size 2.2in,1.5in font ',8'
set output 'figura_04_03.tex'
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

set label '$\omega$'      at  4.70*pi,0
set label '$|F(\omega)|$' at -2.45*pi,1.8*pi

plot abs((2*sin(1*x))/(x)) linetype 7 linewidth 1 notitle

