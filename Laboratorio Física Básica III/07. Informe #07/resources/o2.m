clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i2.csv')

x = table(:,1) % [s]
y = table(:,2) % [V]

%graficar(
%    'Gráfica: Tiempo-Voltaje',
%    'Tiempo [s]',
%    'Voltaje [V]',
%    x,
%    y
%)

% linealización de la curva
x = x(1:9)
y = log(y(1:9))

%graficar(
%    'Linealización de la curva',
%    't',
%    'ln(V)',
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

% calculo de tau
tau = -1/b
e_t = abs(sb/b^2)
E_t = abs(e_t / tau) * 100

sprintf('%.10f', tau)

