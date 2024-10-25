clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

v = table(:,1) % [V]
i = table(:,2) % [mA]

% conversion a SI
i = i / 1000

% graficación
graficar(
    '',
    'Voltaje [V]',
    'Corriente electrica [A]',
    'o1.eps',
    v,
    i
)

[A,sA,B,sB,R]=minimoscuadrados(v,i)

res=1/B
e_r = sqrt( ((-1/res^2)^2 * (sB)^2) )
E_r = abs(e_r / res) * 100

