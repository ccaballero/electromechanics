clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

b = table(:,1)
o = table(:,2)
t1 = table(:,3)
t2 = table(:,4)

% calculo del valor representativo
tp = (t1 + t2) / 2

% calculo del periodo
j = [1:length(o)]
T = arrayfun(@(i) tp(i) / o(i), j)

% calculo de la distancia
b_m = b / 100

graficar(
    '',
    'Distancia [m]',
    'Periodo [s]',
    'o1.1.eps',
    b_m,
    T
)

% linealización de la curva
x = arrayfun(@(i) T(i) * T(i) * b_m(i), j)
y = arrayfun(@(i) b_m(i) * b_m(i), j)

graficar(
    '',
    'T^2 b [s^2m]',
    'b^2 [m^2]',
    'o1.2.eps',
    x,
    y
)

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

% calculo del radio de giro
k = sqrt(-1 * A)
e_k = 0.5 * A * sqrt(-A) * sA
E_k = abs(e_k / k) * 100

% calculo de la gravedad
g = 4 * pi^2 * B
e_g = 4 * pi^2 * sB
E_g = abs(e_g / g) * 100

