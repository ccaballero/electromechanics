clear
close all
clc

% leer datos previamente formateados
table = readtable('i2.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1) % [mm^2]
y = table_(:,2) % [pF]

% conversion a SI
x_m2 = x/1000^2
ex_m = 10/1000^2
y_f = y/1e-12

% personalización de grafica
title('Gráfica: Area-Capacitancia')
xlabel('Area $[m^2]$', 'interpreter', 'latex')
ylabel('Capacitancia $[F]$', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(x_m2, y_f, 'o')
hold off

% MINIMOS CUADRADOS
x = x_m2
y = y_f

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

% calculo de la permisividad del vacio
distancia = 2/1000
edistancia = 0.2/1000
e = distancia * B
ee = sqrt( (B*edistancia)^2 + (distancia*sB)^2 )
EE = abs(ee / e) * 100
