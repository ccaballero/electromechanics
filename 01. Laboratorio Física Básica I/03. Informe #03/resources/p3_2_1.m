% leer datos previamente formateados
table = readtable('i3_2.csv')

% calcular la ecuacion de la recta
p = polyfit(table.Var1, table.Var2, 1)
v = polyval(p, table.Var1)

% personalizar grafica
title('Presion en funcion de la profundidad')
xlabel('Profundidad [m]')
ylabel('Presion [kPa]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
