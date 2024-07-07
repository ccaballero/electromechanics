% leer datos previamente formateados
table = readtable('i3_3.csv')

% personalizar grafica
title('Resistencia electríca en funcion de la temperatura')
xlabel('Temperatura [°C]')
ylabel('Resistencia [\Omega]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
