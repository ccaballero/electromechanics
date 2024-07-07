clear
close all
clc

% leer datos previamente formateados
table = csvread('i1.csv');

r = table(:,1) % [Ω]
p = table(:,2) % [W]

vs = 100;
rs = 250;

x = 0:1:800;
y = (vs^2).*(x./((rs+x).*(rs+x)));

f = figure();

title('Gráfica P_L vs R_L');
xlabel('Resistencia R_L [\Omega]');
ylabel('Potencia R_L [W]');

hold on
grid on

plot(r, p, 'o');
h = plot(x, y);

print(f,'o1.eps','-color')
hold off

