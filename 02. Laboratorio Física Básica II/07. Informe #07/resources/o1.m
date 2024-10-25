clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

vr = table(:,1) % [m/s]
fr = table(:,2) % [hz]

% frecuencia emitida
fe = 343

x = vr
y = fr

graficar(
    '',
    'v_R [m/s]',
    'f_R [Hz]',
    'o1.eps',
    x,
    y
)

[A,sA,B,sB,R]=minimoscuadrados(x,y)

% calculo de la velocidad del sonido
v = -1 * fe * (1/B)
e_v = fe * (1/B*B) * sB
E_v = abs(e_v / v) * 100

