clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

h = table_(:,1) % [m]
P = table_(:,2) % [kPa]

% conversion a SI
P = P * 1000

% personalizar grafica
%title('Gráfica: profundidad vs presión')
%xlabel('Profundidad $[m]$', 'interpreter', 'latex')
%ylabel('Presion $[Pa]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(h, P, 'o')
%hold off

% linealización de la curva
x = h
y = P

% MINIMOS CUADRADOS

% tamaño de la muestra
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

% conversion de unidades
mA = A / 1000
eA = sA / 1000
mB = B / 1000
eB = sB / 1000

% calculo de la densidad
g = 9.78
e_g = 0.02

p = B / g
e_p = sqrt( ((-B/g^2)^2 * (e_g)^2) + ((1/g)^2 * (sB)^2) )
E_p = abs(e_p / p) * 100
