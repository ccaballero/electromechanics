clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

L = table(:,1)
t1 = table(:,2)
t2 = table(:,3)

% calculo del valor representativo
tp = (t1 + t2) / 2

% calculo del periodo
T = tp / 10

x = L
y = T

[A,sA,B,sB,R]=minimoscuadrados(x,y)

