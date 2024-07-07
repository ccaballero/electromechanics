clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i2.csv')

ve = table(:,1) % [m/s]
fr = table(:,2) % [hz]

% frecuencia emitida
fe = 343

x = fr-fe
y = ve.*fr

graficar(
    '',
    'f_R - f_E',
    'v_E f_R',
    'o2.eps',
    x,
    y
)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

