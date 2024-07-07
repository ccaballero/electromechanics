clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv')

% cambio de variable
X = log10(table.Var1(1:end))
Y = log10(table.Var2(1:end))

% calcular la ecuacion de la recta
p = polyfit(X, Y, 1)
v = polyval(p, X)

% personalizar grafica
title('Linealización de la curva')
xlabel('log(d)')
ylabel('log(F)')

% texto y grafica de ecuacion
caption = sprintf("f' = (%.2f) + (%.2f) d'", p(2), p(1))
dim = [.38 .50 0 .3]
a = annotation('textbox',dim,'String',caption,'FitBoxToText','on')
a.Color = 'black'
a.FontSize = 10

% graficar puntos y lineas
hold on
plot(X, Y, 'o')
hold off
