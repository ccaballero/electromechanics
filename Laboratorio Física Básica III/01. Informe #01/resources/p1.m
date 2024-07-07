clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv')

% personalizar grafica
title('Gráfica: Distancia-Fuerza')
xlabel('d $[cm]$','interpreter','latex')
ylabel('F $[N]$','interpreter','latex')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
