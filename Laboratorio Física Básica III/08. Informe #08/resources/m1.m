clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f%f%f%f%f%f%f%f%f%f')
table_ = table2array(table)

x = table_(:,1) % [u]
y0 = table_(:,11) % [G]

% personalizar grafica
%title('Gráfica: Distancia-Campo magnético')
%xlabel('d $[u]$', 'interpreter', 'latex')
%ylabel('B $[G]$', 'interpreter', 'latex')

% graficar puntos y lineas
%xx = linspace(x(1), x(end), 1000)
%yy0 = interp1(x, y0, xx, 'spline')

%hold on
%plot(x, y0, 'x', xx, yy0)
%plot(x, y0, 'x')
%hold off

% linealización de la curva
r = 19
x = log((r*r)+(x.*x))
y0 = log(y0)

% personalizar grafica
%title('Linealización de curva')
%xlabel('$r^2+d^2$', 'interpreter', 'latex')
%ylabel('$B$', 'interpreter', 'latex')

% graficar puntos y lineas
%xx = linspace(x(1), x(end), 1000)
%yy0 = interp1(x, y0, xx, 'spline')

%hold on
%plot(x, y0, 'x', xx, yy0)
%plot(x, y0, 'x')
%hold off

% tamano de la muestra
x = x
y = y0
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)

xx = x.*x
sxx = sum(xx)

yy = y.*y
syy = sum(yy)

xy = x.*y
sxy = sum(xy)

% calculo de los valores de la recta
D1 = (n * sxx) - (sx)^2
D2 = (n * syy) - (sy)^2
A = ( (sy * sxx) - (sxy * sx) ) / D1
B = ( (n * sxy) - (sx * sy) ) / D1

% calculo del error
Y = A + (B * x)
d = y - Y

dd = d.*d
sdd = sum(dd)
s2 = sdd / ( n - 2)

sA = sqrt( (s2 * sxx) / D1 )
sB = sqrt( (s2 * n) / D1 )

% calculando el error porcentual
EA = abs(sA / A) * 100
EB = abs(sB / B) * 100

% calculo de correlacion
R = ((n * sxy) - (sx * sy)) / sqrt( D1 * D2 )

% calculo de los valores originales
e = exp(1)
a = e^A
b = B

% calculo del error absoluto
sa = (e^A) * sA
sb = sB

% calculo del error porcentual
Ea = abs(sa / a) * 100
Eb = abs(sb / b) * 100

% calculo de la permisividad-corriente
uI = (2 * a) / (r * r)
eUI = (2 / (r * r) ) * sa
EUI = abs(eUI / uI) * 100
