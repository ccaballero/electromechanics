clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

x = table(:,1) % [nm]
p1 = table(:,2) % [atm]
p2 = table(:,3) % [atm]
p3 = table(:,4) % [atm]

% conversion a SI
x_m = x * 10e-9
p = (1/3)*(p1+p2+p3)

graficar(
    '',
    'Ancho [m]',
    'Presion [atm]',
    'o1.1.eps',
    x_m,
    p
)

% linealizacion de la curva
x = log(x_m)
y = log(p)

graficar(
    '',
    'ln(x)',
    'ln(p)',
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

