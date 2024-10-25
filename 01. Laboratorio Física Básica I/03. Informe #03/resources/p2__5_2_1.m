% leer datos previamente formateados
table = readtable('i2__5_2.csv')

% calcular la ecuacion de la recta
p = polyfit(table.Var1, table.Var2, 1)
v = polyval(p, table.Var1)

% personalizar grafica
title('Posicion en funcion al tiempo (Serie 2)')
xlabel('Tiempo [s]')
ylabel('Posicion [m]')

% texto y grafica de ecuacion
caption = sprintf('y = %.2f x + %.2f', p(1), p(2))
dim = [.18 .55 0 .3]
a = annotation('textbox',dim,'String',caption,'FitBoxToText','on')
a.Color = 'red'
a.FontSize = 10

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
plot(table.Var1, v, 'LineWidth', 2)
hold off
