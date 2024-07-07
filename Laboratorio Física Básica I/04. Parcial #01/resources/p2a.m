% leer datos previamente formateados
table = readtable('i2.csv')

% personalizar grafica
title('Oscilacion en funcion de la longitud')
xlabel('Longitud (L)')
ylabel('Oscilacion T(L)')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
