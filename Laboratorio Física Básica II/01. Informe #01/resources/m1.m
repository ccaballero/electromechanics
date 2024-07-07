clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

g = 9.78

% conversion de masa a kilogramos
m_gr = table_(:,1)
m_kg = m_gr./1000

% conversion de longitud a metros
l_cm = table_(:,2)
l_m = l_cm./100

% calculo del area
a = (2/1000)*(1.6/1000)
e_a = sqrt( ((2/1000)^2*(0.1/1000)^2) + ((1.6/1000)^2*(0.1/1000)^2) )

d = l_m-l_m(1)
epsilon = d/l_m(1)
sigma = arrayfun(@(m) (m*g)/a, m_kg)

% personalizar grafica
%title('Esfuerzo - Deformación unitaria')
%xlabel('Deformacion Unitaria ($\epsilon$)','interpreter','latex')
%ylabel('Esfuerzo ($\sigma$)','interpreter','latex')

% graficar puntos y lineas
%hold on
%plot(epsilon, sigma, 'o')
%hold off

% MINIMOS CUADRADOS

% remover los elementos fuera del comportamiento elastico
x = epsilon(1:15)
y = sigma(1:15)

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

% conversion del modulo de young
Y = B / 1e6
eY = sB / 1e6
EY = abs(eY / Y) * 100


