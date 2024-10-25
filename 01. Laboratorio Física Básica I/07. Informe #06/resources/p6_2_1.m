% leer datos previamente formateados
table = readtable('i6_2.csv')

% pasando variables
X = table.Var1
Y = table.Var2

% calcular la ecuacion de la recta
p = polyfit(X, Y, 1)
v = polyval(p, X)

% personalizar grafica
title('Grafica #2: Velocidad-Tiempo')
xlabel('Tiempo [s]')
ylabel('Velocidad [m/s]')

% texto y grafica de ecuacion
caption = sprintf('y = (%.2f) + (%.2f) x', p(2), p(1))
dim = [.18 .35 0 .3]
a = annotation('textbox',dim,'String',caption,'FitBoxToText','on')
a.Color = 'red'
a.FontSize = 10

% graficar puntos y lineas
hold on
plot(X, Y, 'o')
plot(X, v, 'LineWidth', 2)
hold off

