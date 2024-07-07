% leer datos previamente formateados
table = readtable('i3.csv')

% personalizar grafica
title('Presion en funcion del volumen')
xlabel('Volumen (V)')
ylabel('Presion (P)')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
