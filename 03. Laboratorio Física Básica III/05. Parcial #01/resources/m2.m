clear
close all
clc

% leer datos previamente formateados
table = readtable('i2.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1) % [m]
y = table_(:,2) % [N]

% personalizar grafica
title('Gráfica: Distancia - Fuerza')
xlabel('d $[m]$', 'interpreter', 'latex')
ylabel('F $[N]$', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(x, y, 'o')
hold off

% cambio de variable y remover el primer elemento
x = log(x)
y = log(y)

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

% calculando los valores originales
e = exp(1)
a = e^A
b = B

% calculando el error absoluto
sa = (e^A) * sA
sb = sB

% calculando el error porcentual
Ea = (sa / a) * 100
Eb = (sb / b) * 100

% calculo del coeficiente de permisividad
q1 = 4.2e-6
q2 = 7.89e-6

e0 = abs(q1 * q2) / (4 * pi * a)
ee0 = (abs(q1 * q2) / (4 * pi * a * a)) * sa
Ee0 = abs(ee0 / e0) * 100
