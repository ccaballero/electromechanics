clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i3.csv')

ve = table(:,1) % [m/s]
vr = table(:,2) % [m/s]
fr = table(:,3) % [hz]

% frecuencia emitida
fe = 343

% linealización de la curva
x = fe - fr
y = vr.*fe - ve.*fr

graficar(
    '',
    'f_E - f_R',
    'v_R f_E - v_E f_R',
    'o3.eps',
    x,
    y
)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

