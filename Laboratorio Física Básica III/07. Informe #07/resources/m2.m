clear
close all
clc

% leer datos previamente formateados
table = readtable('i2.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1) % [s]
y = table_(:,2) % [V]

% personalizar grafica
%title('Gráfica: Tiempo-Voltaje')
%xlabel('Tiempo $[s]$', 'interpreter', 'latex')
%ylabel('Voltaje $[V]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x, y, 'o')
%hold off

% linealización de la curva
x = x(1:9)
y = log(y(1:9))

% personalizar grafica
%title('Linealización de la curva')
%xlabel('$t$', 'interpreter', 'latex')
%ylabel('$ln(V)$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x, y, 'o')
%hold off

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

% calculo de tau
tau = -1/b
e_t = abs(sb/b^2)
E_t = abs(e_t / tau) * 100

sprintf('%.10f', tau)
