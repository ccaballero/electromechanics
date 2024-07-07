clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

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
V0 = 9
x = x(1:9)
y = log(1 - (y(1:9)/V0))

%graficar(
%    'Linealización de la curva',
%    't',
%    'ln(1 - \frac{V}{V_0})',
%    x,
%    y
%)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

% calculo de tau
tau = - (1/B)
e_t = abs(sB/B^2)
E_t = abs(e_t / tau) * 100

sprintf('%.10f', tau)

