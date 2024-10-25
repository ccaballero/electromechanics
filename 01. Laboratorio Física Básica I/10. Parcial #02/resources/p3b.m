% leer datos previamente formateados
table = readtable('i3.csv')

% cambio de variable
X = log10(table.Var1)
Y = log10(table.Var2)

% calcular la ecuacion de la recta
p = polyfit(X, Y, 1)
v = polyval(p, X)

% personalizar grafica
title('Cambio de variable logaritmico')
xlabel('log(t)')
ylabel('log(x)')

% graficar puntos y lineas
hold on
plot(X, Y, 'o')
plot(X, v, 'LineWidth', 2)
hold off

