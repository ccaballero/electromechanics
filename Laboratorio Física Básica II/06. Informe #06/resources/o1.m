clear
close all
clc

addpath('../../../octave')

% leer datos previamente formateados
table = csvread('i1.csv')

x = table(:,1)
y = table(:,2)

xq = 0:0.1:max(x)
vq2 = interp1(x, y, xq, 'spline')

f = figure()

title('')
xlabel('Tiempo [s]')
ylabel('Nivel sonoro [dB]')

hold on
grid on
plot(x, y, 'x', xq, vq2, '.r')
xlim([0 max(x)])

funcion = @(z) interp1(x, y, z, 'spline')
area(xq, funcion(xq))
print(f,'o1.eps','-color')
hold off

area = integral(funcion, 0, max(x))
t = length(x) * 5
equiv = area / t

