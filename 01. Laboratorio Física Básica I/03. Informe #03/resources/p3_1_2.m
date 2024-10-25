% leer datos previamente formateados
table = readtable('i3_1.csv')

% cambio de variable
X = log10(table.Var1(2:end))
Y = log10(table.Var2(2:end))

% calcular la ecuacion de la recta
p = polyfit(X, Y, 1)
v = polyval(p, X)

% personalizar grafica
title('Cambio de variable logaritmico')
xlabel('log(x)')
ylabel('log(I)')

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
