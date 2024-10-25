clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f%f%f')
table_ = table2array(table)

b = table_(:,1)
o = table_(:,2)
t1 = table_(:,3)
t2 = table_(:,4)

% calculo del valor representativo
tp = (t1 + t2) / 2

% calculo del periodo
j = [1:length(o)]
T = arrayfun(@(i) tp(i) / o(i), j)

% calculo de la distancia
b_m = b / 100

% personalizar grafica
%title('Gráfica: Distancia-Periodo')
%xlabel('Distancia $[m]$', 'interpreter', 'latex')
%ylabel('Periodo $[s]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(b_m, T, 'o')
%hold off

% linealización de la curva
x = arrayfun(@(i) T(i) * T(i) * b_m(i), j)
y = arrayfun(@(i) b_m(i) * b_m(i), j)

% personalizar grafica
%title('Linealización de la curva')
%xlabel('$T^2\,b [s^2m]$', 'interpreter', 'latex')
%ylabel('$b^2 [m^2]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x, y, 'o')
%hold off

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

% calculo del radio de giro
k = sqrt(-1 * A)
e_k = 0.5 * A * sqrt(-A) * sA
E_k = abs(e_k / k) * 100

% calculo de la gravedad
g = 4 * pi^2 * B
e_g = 4 * pi^2 * sB
E_g = abs(e_g / g) * 100
