% leer datos previamente formateados
table = readtable('i6_1.csv')

% personalizar grafica
title('Grafica #1: Posicion-Tiempo')
xlabel('Tiempo [s]')
ylabel('Posicion [m]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off

