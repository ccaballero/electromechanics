l = [0.1000    0.2000    0.3000    0.4000    0.5000    0.6000    0.7000    0.8000    0.9000    1.0000]
t1 = [6.3100    8.9900   10.4900   11.9000   14.2100   15.5900   16.8100   18.0500   19.0200   20.0400]
t2 = [6.3400    8.9400   10.2500   11.8500   14.1800   15.5200   16.6300   17.8800   19.1100   20.0800]

p = (t1 + t2) / 2
p = p / 10

% personalizar grafica
title('Gráfica Longitud vs Periodo')
xlabel('L [m]', 'interpreter', 'latex')
ylabel('T [s]', 'interpreter', 'latex')

% graficar puntos y lineas
hold on
plot(l, p, 'o')
hold off
