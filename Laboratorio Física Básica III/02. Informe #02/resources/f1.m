clear
close all
clc

% crear cuadricula
N = 20
minX = -50
maxX = 400
minY = -50
maxY = 350
x=linspace(minX,maxX,N)
y=linspace(minY,maxY,N)
[xG,yG]=meshgrid(x,y)

% carga 1
xC1 = 100
yC1 = 150

% carga 2
xC2 = 250
yC2 = 150

% campo electrico
Q1 = 7
Q2 = -7

eps0 = 8.854e-12
k = 1/(4*pi*eps0)

% calculo de carga 1
Rx = xG - xC1
Ry = yG - yC1
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = k .* Q1 .* Rx ./ R
Ey = k .* Q1 .* Ry ./ R

% calculo de carga 2
Rx = xG - xC2
Ry = yG - yC2
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

E = sqrt(Ex.^2 + Ey.^2)

u = Ex./E
v = Ey./E

figure()
h = quiver(xG,yG,u,v,'autoscalefactor',0.5)
set(h,'color',[1 0 0],'linewidth',1.0)
axis equal
box on

a=4
h = rectangle('Position',[xC1-a/2,yC1-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])

h=rectangle('Position',[xC2-a/2,yC2-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1])
