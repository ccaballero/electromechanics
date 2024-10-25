clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1) % [mm]
y = table_(:,2) % [pF]

% conversion a SI
x_m = x/1000
ex_m = 0.2/1000
y_f = y/1e-12

% personalizar grafica
%title('Gráfica: Distancia-Capacitancia')
%xlabel('Distancia $[m]$', 'interpreter', 'latex')
%ylabel('Capacitancia $[F]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x_m, y_f, 'o')
%hold off

% linealización de la curva
x = log(x_m)
y = log(y_f)

% personalizar grafica
title('Linealización de la curva')
xlabel('ln(d)', 'interpreter', 'latex')
ylabel('ln(C)', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(x, y, 'o')
hold off

% tamano de la muestra
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

% calculando los valores originales
e = exp(1)
a = e^A
b = B

% calculando el error absoluto
sa = (e^A) * sA
sb = sB

% calculando el error porcentual
Ea = abs(sa / a) * 100
Eb = abs(sb / b) * 100

% calculo de la permisividad del vacio
area = 400/1000^2
earea= 10/1000^2
e = a / area
ee = sqrt( ((1/area)*earea)^2 + ((a/area^2)*sa)^2 )
EE = abs(ee / e) * 100
