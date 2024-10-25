% leer datos previamente formateados
table = readtable('i8_1.csv')

% personalizar grafica
title('Grafica #1: Energia-Altura')
xlabel('Altura $[m]$','interpreter','latex')
ylabel('Energia $[J]$','interpreter','latex')

% definicion de colores
b = [0.196 0.510 0.843]
g = [0 0.800 0.102]
y = [0.706 0.706 0]

% graficar puntos y lineas
hold on
l1 = plot(table.Var1, table.Var3, 'o', 'Color', b, 'MarkerFaceColor', b)
l2 = plot(table.Var1, table.Var4, 'o', 'Color', g, 'MarkerFaceColor', g)
l3 = plot(table.Var1, table.Var5, 'o', 'Color', y, 'MarkerFaceColor', y)

legend([l1,l2,l3], 'Energia potencial','Energia cinetica','Energia total');
hold off