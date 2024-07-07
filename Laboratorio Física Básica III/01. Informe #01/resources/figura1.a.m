clear
close all
clc

% crear cuadricula
N = 20
minX = -2
maxX = 2
minY = -2
maxY = 2
x=linspace(minX,maxX,N)
y=linspace(minY,maxY,N)
[xG,yG]=meshgrid(x,y)

a = 0.3

% posicion de la particula 1 (negativa)
xC1 = 0.75
yC1 = 0

% posicion de la particual 2 (positiva)
xC2 = -0.75
yC2 = 0

% campo electrico
Qn = -20
Qp = 20
eps0 = 8.854e-12
kC = 1/(4*pi*eps0);
Rx = xG - xC1;
Ry = yG - yC1;
R = sqrt(Rx.^2 + Ry.^2).^3;
Ex = kC .* Qn .* Rx ./ R;
Ey = kC .* Qn .* Ry ./ R;
Rx = xG - xC2;
Ry = yG - yC2;
R = sqrt(Rx.^2 + Ry.^2).^3;
Ex = Ex + kC .* Qp .* Rx ./ R;
Ey = Ey + kC .* Qp .* Ry ./ R;
E = sqrt(Ex.^2 + Ey.^2);

u = Ex./E;
v = Ey./E;

figure()
h = quiver(xG,yG,u,v,'autoscalefactor',0.6)
set(h,'color',[1 0 0],'linewidth',1.2)
axis([-1.5 1.5 -1.5 1.5]);
axis equal;
box on

h = rectangle('Position',[xC1-a/2,yC1-a/2,a,a],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
text(0.69,0.05,'-','Color','white','FontSize',30);

h=rectangle('Position',[xC2-a/2,yC2-a/2,a,a],'curvature',[1 1]);
set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
text(-0.85,0,'+','Color','white','FontSize',30);
