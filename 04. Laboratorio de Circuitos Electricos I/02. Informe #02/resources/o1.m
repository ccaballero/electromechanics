clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

i = table(:,2) % [V]
v = table(:,1) % [mA]

[A,sA,B,sB,R]=minimoscuadrados(i,v)

% graficación
graficarConLinea(
    '',
    'Corriente electrica [A]',
    'Voltaje [V]',
    'o1.eps',
    i,
    v,
    A,
    B
)

%res=1/B
%e_r = sqrt( ((-1/res^2)^2 * (sB)^2) )
%E_r = abs(e_r / res) * 100

