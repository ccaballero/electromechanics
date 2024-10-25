clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

g = 9.78

% conversion de masa a kilogramos
m_kg = table(:,1)./1000
% conversion de longitud a metros
l_m = table(:,2)./100

% calculo del area
a = (2/1000)*(1.6/1000)

d = l_m-l_m(1)
epsilon = d/l_m(1)
sigma = arrayfun(@(m) (m*g)/a, m_kg)

graficar(
    '',
    'Deformacion unitaria (epsilon)',
    'Esfuerzo (sigma)',
    'o1.eps',
    epsilon,
    sigma
)

% remover los elementos fuera del comportamiento elastico
x = epsilon(1:15)
y = sigma(1:15)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

% conversion del modulo de young
Y = B / 1e6
eY = sB / 1e6
EY = abs(eY / Y) * 100

