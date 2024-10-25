clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
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
V0 = 9
x = x(1:9)
y = log(1 - (y(1:9)/V0))

% personalizar grafica
%title('Linealización de la curva')
%xlabel('$t$', 'interpreter', 'latex')
%ylabel('$ln(1 - \frac{V}{V_0})$', 'interpreter', 'latex')

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

% calculo de tau
tau = - (1/B)
e_t = abs(sB/B^2)
E_t = abs(e_t / tau) * 100

sprintf('%.10f', tau)
