clear
close all
clc

% leer datos previamente formateados
table = readtable('i4.csv')

% personalizar grafica
title('Distancia-Potencial Eléctrico')
xlabel('d $[cm]$','interpreter','latex')
ylabel('V $[V]$','interpreter','latex')

% graficar puntos y lineas
hold on
%plot(table.Var1, table.Var3, 'o', 'Color', 'red')
plot(table.Var2, table.Var3, 'o', 'Color', 'blue')
hold off

