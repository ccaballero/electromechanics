clear
close all
clc

g = 9.78

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

m = table_(:,1)
l = table_(:,2)
y0 = table_(1,2)

% conversion a SI
m_kg = m/1000
d_cm = l-y0
d_mt = d_cm/100

% conversion F=mg y d=d-do
F = arrayfun(@(m) g * m, m_kg)
d = arrayfun(@(d) d, d_mt)

% personalizar grafica
%title('Gráfica: Longitud-Fuerza')
%xlabel('Longitud $[m]$', 'interpreter', 'latex')
%ylabel('Fuerza $[N]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(d, F, 'o')
%hold off

% MINIMOS CUADRADOS

% tamano de la muestra
n = length(d)

% calculo de las sumatorias
x = d
y = F

sx = sum(x)
sy = sum(y)

xx = x.*x
sxx = sum(xx)

yy = y.*y
syy = sum(yy)

xy = x.*y
sxy = sum(xy)

% calculo de los valores de la recta
D = (n * sxx) - (sx)^2
DD = (n * syy) - (sy)^2
A = ( (sy * sxx) - (sxy * sx) ) / D
B = ( (n * sxy) - (sx * sy) ) / D

% calculo del error
Y = A + (B * x)
d = y - Y

dd = d.*d
sdd = sum(dd)
s2 = sdd / ( n - 2)

sA = sqrt( (s2 * sxx) / D )
sB = sqrt( (s2 * n) / D )

% calculando el error porcentual
EA = abs(sA / A) * 100
EB = abs(sB / B) * 100

% calculo de correlacion
R = ((n * sxy) - (sx * sy)) / sqrt( D * DD )
