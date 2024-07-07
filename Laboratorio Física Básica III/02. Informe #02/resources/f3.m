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

% linea de carga
xC1 = 100
yC11 = 210
yC12 = 190
yC13 = 170
yC14 = 150
yC15 = 130
yC16 = 110
yC17 = 90

% carga 2
xC2 = 250
yC21 = 210
yC22 = 190
yC23 = 170
yC24 = 150
yC25 = 130
yC26 = 110
yC27 = 90

% campo electrico
Q1 = 1
Q2 = -1

e = 8.854e-12
k = 1/(4*pi*e)
Ex = 0
Ey = 0

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC11
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC12
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC13
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC14
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC15
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC16
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC1
Ry = yG - yC17
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q1 .* Rx ./ R
Ey = Ey + k .* Q1 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC21
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC22
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC23
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC24
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC25
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC26
R = sqrt(Rx.^2 + Ry.^2).^3
Ex = Ex + k .* Q2 .* Rx ./ R
Ey = Ey + k .* Q2 .* Ry ./ R

% calculo de linea carga
Rx = xG - xC2
Ry = yG - yC27
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
h = rectangle('Position',[xC1-a/2,yC11-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC12-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC13-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC14-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC15-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC16-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC1-a/2,yC17-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])

h = rectangle('Position',[xC2-a/2,yC21-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC22-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC23-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC24-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC25-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC26-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
h = rectangle('Position',[xC2-a/2,yC27-a/2,a,a],'curvature',[1 1])
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1])
