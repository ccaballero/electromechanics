% leer datos previamente formateados
table = readtable('i3_4.csv')

% personalizar grafica
title('Periodo en funcion de la longitud')
xlabel('Longitud [m]')
ylabel('Periodo [s]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
