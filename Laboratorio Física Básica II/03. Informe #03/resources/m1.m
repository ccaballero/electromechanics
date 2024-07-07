clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f%f')
table_ = table2array(table)

L = table_(:,1)
t1 = table_(:,2)
t2 = table_(:,3)

% calculo del valor representativo
tp = (t1 + t2) / 2

% calculo del periodo
T = tp / 10

% personalizar grafica
%title('Gráfica: Longitud-Periodo')
%xlabel('Longitud $[m]$', 'interpreter', 'latex')
%ylabel('Periodo $[s]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(L, T, 'o')
%hold off

% linealización de la curva
x = log(L)
y = log(T)

% personalizar grafica
%title('Linealización de la curva')
%xlabel('ln(T)', 'interpreter', 'latex')
%ylabel('ln(L)', 'interpreter', 'latex')

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

% calculo de la gravedad
g = (4 * pi^2) / a^2
e_g = ((8*(pi^2))/a^3) * sa
E_g = abs(e_g / g) * 100
