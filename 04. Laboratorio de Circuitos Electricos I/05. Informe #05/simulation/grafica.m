clear
close all
clc

v = 100; % [V]
r1 = 250; % [Ω]

x = 0:1:800;
y = (v^2).*(x./((r1+x).*(r1+x)));

f = figure();

title('Gráfica P_L vs R_L');
xlabel('Resistencia R_L [\Omega]');
ylabel('Potencia R_L [W]');

%xlabel('$R_L\,[\Omega]$', 'interpreter', 'latex')
%ylabel('$P_L\,[W]$', 'interpreter', 'latex')

hold on
grid on

h = plot(x, y);

print(f,'grafica.eps','-color')
hold off

