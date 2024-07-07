% leer datos previamente formateados
table = readtable('i2.csv')

% personalizar grafica
title('Posicion en funcion del tiempo')
xlabel('Tiempo (t)')
ylabel('Posicion x(t)')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off

