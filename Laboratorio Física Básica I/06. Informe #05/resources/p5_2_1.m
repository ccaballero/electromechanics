% leer datos previamente formateados
table = readtable('i5_2.csv')

% calcular la ecuacion de la recta
p = polyfit(table.Var1, table.Var2, 1)
v = polyval(p, table.Var1)

% personalizar grafica
title('Grafica #1: Posicion-Tiempo (X=-5)')
xlabel('Tiempo [s]')
ylabel('Distancia [m]')

% texto y grafica de ecuacion
caption = sprintf('y = (%.2f) + (%.2f) x', p(2), p(1))
dim = [.18 .35 0 .3]
a = annotation('textbox',dim,'String',caption,'FitBoxToText','on')
a.Color = 'red'
a.FontSize = 10

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
plot(table.Var1, v, 'LineWidth', 2)
hold off

