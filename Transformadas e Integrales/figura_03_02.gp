set terminal epslatex size 2.5in,2.5in font ',8'
set output 'figura_03_02.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics 1
set format x ''
set xrange [-4:4]
set arrow from -4.5,0 to 4.5,0, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-4:4]
set arrow from 0,-4.5 to 0,4.5, graph 1 filled head

set arrow from 3,-3 to 3,3 nohead linetype 0 linewidth 2
set arrow from 0,3 to 3,3 nohead linetype 0 linewidth 2
set arrow from 0,-3 to 3,-3 nohead linetype 0 linewidth 2

set label '$\mathbb{R}e$' at  5   , 0
set label '$\mathbb{I}m$' at  0.35, 4.25
set label '$z$'           at  3.00, 3.45
set label '$z*$'          at  3.00,-3.45
set label '$a$'           at  2.90,-0.35
set label '$jb$'          at -0.75, 3.05
set label '$-jb$'         at -1.00,-3.05
set label '$\theta$'      at  1.20, 0.40
set label '$-\theta$'     at  1.20,-0.60

plot ( (0<=x && x<=3) ? x : NaN) linetype 7 linewidth 3 notitle
plot ( (0.68<=x && x<=1) ? sqrt(1-(x*x)) : NaN) linetype 6 linewidth 3 notitle
plot ( (0<=x && x<=3) ? -x : NaN) linetype 7 linewidth 3 notitle
plot ( (0.68<=x && x<=1) ? -sqrt(1-(x*x)) : NaN) linetype 6 linewidth 3 notitle

