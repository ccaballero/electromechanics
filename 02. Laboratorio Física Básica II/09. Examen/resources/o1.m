clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

L = table(:,1)
t = table(:,2)

% calculo del periodo
T = t / 10

graficar(
    '',
    'Longitud [m]',
    'Periodo [s]',
    'o1.1.eps',
    L,
    T
)

x = log(L)
y = log(T)

graficar(
    '',
    'ln(L)',
    'ln(T)',
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

% calculo de la gravedad
g = (4 * pi^2) / a^2
e_g = ((8*(pi^2))/a^3) * sa
E_g = abs(e_g / g) * 100

