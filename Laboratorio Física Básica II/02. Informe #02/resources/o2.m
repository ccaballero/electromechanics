clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i2.csv')

g = 9.78

m = table(:,1)
l = table(:,2)
y0 = table(1,2)

% conversion a SI
m_kg = m/1000
d_cm = l-y0
d_mt = d_cm/100

% conversion F=mg y d=d-do
F = arrayfun(@(m) g*m, m_kg)
d = arrayfun(@(d) d, d_mt)

graficar(
    '',
    'Longitud [m]',
    'Fuerza [N]',
    'o2.eps',
    d,
    F
)

x = d
y = F

[A,sA,B,sB,R]=minimoscuadrados(x,y)

