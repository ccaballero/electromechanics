% leer datos previamente formateados
table = readtable('i4.csv')

% personalizar grafica
title('Diametro en funcion de la masa')
xlabel('Diametro (D)')
ylabel('Masa m(D)')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
