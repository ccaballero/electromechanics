clear
close all
clc

% leer datos previamente formateados
table = readtable('i2.csv')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
