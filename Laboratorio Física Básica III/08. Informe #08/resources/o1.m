clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

x = table(:,1) % [u]
y0 = table(:,11) % [G]

%graficar(
%    'Gráfica: Distancia-Campo magnético',
%    'd [u]',
%    'B [G]',
%    x,
%    y0
%)

% linealización de la curva
r = 19
x = log((r*r)+(x.*x))
y = log(y0)

%graficar(
%    'Linealización de la curva',
%    'r^2+d^2',
%    'B',
%    x,
%    y
%)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

% calculo de los valores originales
e = exp(1)
a = e^A
b = B

% calculo del error absoluto
sa = (e^A) * sA
sb = sB

% calculo del error porcentual
Ea = abs(sa / a) * 100
Eb = abs(sb / b) * 100

% calculo de la permisividad-corriente
uI = (2 * a) / (r * r)
eUI = (2 / (r * r) ) * sa
EUI = abs(eUI / uI) * 100
