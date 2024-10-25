clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

v = table(:,1) % [V]
i = table(:,2) % [A]

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

