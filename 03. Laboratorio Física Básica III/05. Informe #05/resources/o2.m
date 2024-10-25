clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i2.csv')

x = table(:,1) % [mm^2]
y = table(:,2) % [pF]

% conversion a SI
x_m2 = x/1000^2
ex_m = 10/1000^2
y_f = y/1e-12

%graficar(
%    'Gráfica: Area-Capacitancia',
%    'Area [m^2]',
%    'Capacitancia [F]',
%    x_m2,
%    y_f
%)

[A,sA,B,sB,R]=minimoscuadrados(x_m2,y_f)

% calculo de la permisividad del vacio
distancia = 2/1000
edistancia = 0.2/1000
e = distancia * B
ee = sqrt( (B*edistancia)^2 + (distancia*sB)^2 )
EE = abs(ee / e) * 100

