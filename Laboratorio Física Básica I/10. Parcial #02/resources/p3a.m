% leer datos previamente formateados
table = readtable('i3.csv')

% personalizar grafica
title('Aceleracion en funcion de la fuerza')
xlabel('Fuerza (F)')
ylabel('Aceleracion a(F)')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off

