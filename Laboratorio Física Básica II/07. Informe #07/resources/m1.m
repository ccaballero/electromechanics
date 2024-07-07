clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

vr = table_(:,1) % [m/s]
fr = table_(:,2) % [hz]

% frecuencia emitida
fe = 343

% personalizar grafica
title('Gr�fica: v_R vs f_R')
xlabel('$v_R [m/s]$', 'interpreter', 'latex')
ylabel('$f_R [Hz]$', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(vr, fr, 'o')
hold off

% linealización de la curva
x = vr
y = fr

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

% calculo de la velocidad del sonido
v = -1 * fe * (1/B)
e_v = fe * (1/B*B) * sB
E_v = abs(e_v / v) * 100

