clear
close all
clc

% leer datos previamente formateados
table = readtable('i2.csv', 'Format', '%f%f')
table_ = table2array(table)

ve = table_(:,1) % [m/s]
fr = table_(:,2) % [hz]

% frecuencia emitida
fe = 343

% linealización de la curva
x = fr - fe
y = ve.*fr

% personalizar grafica
title('Gráfica: (f_R - f_E) vs (v_E f_R)')
xlabel('$f_R - f_E$', 'interpreter', 'latex')
ylabel('$v_E f_R$', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(x, y, 'o')
hold off

% MINIMOS CUADRADOS

% tamaÃ±o de la muestra
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

