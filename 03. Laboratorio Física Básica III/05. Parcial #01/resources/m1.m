clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1) % [mA]
y = table_(:,2) % [V]

% conversion a SI
x_A = x/1e3
y_V = y

% personalizar grafica
title('Gráfica: Corriente - Voltaje')
xlabel('I $[A]$', 'interpreter', 'latex')
ylabel('V $[V]$', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(x_A, y_V, 'o')
hold off

% valores para minimos cuadrados
x = x_A
y = y_V

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

% corriente de corto circuito
ICC = abs(A) / abs(B)
