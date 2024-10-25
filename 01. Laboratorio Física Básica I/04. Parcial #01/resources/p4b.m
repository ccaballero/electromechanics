% leer datos previamente formateados
table = readtable('i4.csv')

% cambio de variable
X = table.Var1.^3
Y = table.Var2

% calcular la ecuacion de la recta
p = polyfit(X, Y, 1)
v = polyval(p, X)

% personalizar grafica
title('Cambio de variable')
xlabel('$D^3$','interpreter','latex')
ylabel('m')

% graficar puntos y lineas
hold on
plot(X, Y, 'o')
plot(X, v, 'LineWidth', 2)
hold off


