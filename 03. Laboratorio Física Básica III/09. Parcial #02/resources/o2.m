clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i2.csv')

x = table(:,1) % [mm]
y = table(:,2) % [pF]

% conversion a SI
x_m = x/1000
y_f = y/1e12

%graficar(
%    'Gráfica: Distancia-Capacitancia',
%    'Distancia [m]',
%    'Capacitancia [F]',
%    x_m,
%    y_f
%)

% linealización de la curva
x = log(x_m)
y = log(y_f)

%graficar(
%    'Linealización de la curva',
%    'ln(d)',
%    'ln(C)',
%    x,
%    y
%)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

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

% calculo de la permisividad del vacio
area = 100/1000^2
earea= 10/1000^2

e = a / area
ee = (1/area)*sa
EE = abs(ee / e) * 100


