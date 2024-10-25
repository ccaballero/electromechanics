% leer datos previamente formateados
table = readtable('i7_2.csv')

% personalizar grafica
title('Grafica #2: Aceleracion-Fuerza')
xlabel('Fuerza $[N]$','interpreter','latex')
ylabel('Aceleracion $[m/s^2]$','interpreter','latex')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off