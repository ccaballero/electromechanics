clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

h = table(:,1) % [m]
P = table(:,2) % [kPa]

% conversion a SI
P = P * 1000

graficar(
    '',
    'Profundidad [m]',
    'Presion [Pa]',
    'o1.eps',
    h,
    P
)

x = h
y = P

[A,sA,B,sB,R]=minimoscuadrados(x,y)

% conversion de unidades
mA = A / 1000
eA = sA / 1000
mB = B / 1000
eB = sB / 1000

% calculo de la densidad
g = 9.78
e_g = 0.02

p = B / g
e_p = sqrt( ((-B/g^2)^2 * (e_g)^2) + ((1/g)^2 * (sB)^2) )
E_p = abs(e_p / p) * 100

