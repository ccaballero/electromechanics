clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f%f%f')
table_ = table2array(table)

x = table_(:,1) % [nm]
p1 = table_(:,2) % [atm]
p2 = table_(:,3) % [atm]
p3 = table_(:,4) % [atm]

% conversion a SI
x_m = x * 10e-9
p = (1/3)*(p1+p2+p3)

% personalizar grafica
%title('Gr?fica: ancho vs presi?n')
%xlabel('Ancho $[m]$', 'interpreter', 'latex')
%ylabel('Presi\''on $[atm]$', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x_m, p, 'o')
%hold off

% linealizacion de la curva
x = log(x_m)
y = log(p)

% personalizar grafica
%title('Linealizaci?n de la curva')
%xlabel('ln(x)', 'interpreter', 'latex')
%ylabel('ln(p)', 'interpreter', 'latex')

% graficar puntos y lineas
%hold on
%plot(x, y, 'o')
%hold off

xx = x.*x
yy = y.*y
xy = x.*y

% tamano de la muestra
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)

sxx = sum(xx)
syy = sum(yy)
sxy = sum(xy)

D1 = (n * sxx) - (sx)^2
D2 = (n * syy) - (sy)^2

% calculo de los valores de la recta
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
Ea = abs(sa / a) * 100
Eb = abs(sb / b) * 100

% calculo del area
T = 300
N = 300
NA = 6.0221415e23
n = N/NA
R = 8.205746e-5

area = n*R*(T/a)
ee = n*R*(T/a*a) * sa
EE = abs(ee / area) * 100

area_nm2 = area * 10e9 * 10e9
ee_nm2 = ee * 10e9 * 10e9
