clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv', 'Format', '%f%f')
table_ = table2array(table)

x = table_(:,1)
y = table_(:,2)

xq = 0:0.01:max(x)
vq2 = interp1(x, y, xq, 'spline')

hold on
plot(x, y, 'x', xq, vq2, '.r')
xlim([0 max(x)])

title('Grafica Tiempo-Nivel Sonoro')
xlabel('Tiempo $[s]$', 'interpreter', 'latex')
ylabel('Nivel sonoro $[dB]$', 'interpreter', 'latex')

funcion = @(z) interp1(x, y, z, 'spline')
area(xq, funcion(xq))
hold off

area = integral(funcion, 0, max(x))
t = length(x) * 5
equiv = area / t
