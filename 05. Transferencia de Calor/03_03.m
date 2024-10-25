clear
close all
clc

function graficar(x,y)
    hold on
    grid on

    plot(x,y,'o')

    hold off
endfunction


e = 0.3     % [m]
ti = 370    % [ºC]
tM = 38     % [ºC]
p = 7850    % [kg/m^3]
Cp = 0.13   % [kcal/kg ºC]
k = 37.2    % [kcal/m h ºC]

% inciso a
display("")
theta = 14.85 / 60  % [h]
rm = e / 2          % [m]
x = rm              % [m]

alpha = k / (p * Cp)
X = (alpha * theta) / rm^2
a1X = (0.5 * pi)^2 * X

ec2 = (4 / pi) * ((exp(-1*a1X) * sin((pi * x) / (2 * rm))) + ((1 / 3) * exp(-9*a1X) * sin((3 * pi * x) / (2 * rm))))
tf = tM + (ec2 * (ti - tM))
tF = tf

% inciso b
display("")
x = rm - 0.15

ec2 = (4 / pi) * ((exp(-1*a1X) * sin((pi * x) / (2 * rm))) + ((1 / 3) * exp(-9*a1X) * sin((3 * pi * x) / (2 * rm))))
tf = tM + (ec2 * (ti - tM))

% inciso c
display("")
x = rm - 0.05

ec2 = (4 / pi) * ((exp(-1*a1X) * sin((pi * x) / (2 * rm))) + ((1 / 3) * exp(-9*a1X) * sin((3 * pi * x) / (2 * rm))))
tf = tM + (ec2 * (ti - tM))

% inciso d
display("")
tf = tF
x = rm - 0.05

a1X = (0.5 * pi)^2 * (alpha / rm^2)
ec1 = (tf - tM) / (ti - tM)
theta = (1/(-1 * a1X)) * log(ec1 * (pi / 4) * (1 / sin((pi * x) / (2 * rm))))

% inciso e
display("")
theta = theta
tf = 150

a1X = (0.5 * pi)^2 * (alpha / rm^2) * theta
ec1 = (tf - tM) / (ti - tM)

xref = asin(ec1 * (pi / 4) * (1 / exp(-1 * a1X))) * ((2 * rm) / (pi))

vol = 1000;
x = zeros(1,vol);
y = zeros(1,vol);

printf("\nX\t\t\tERROR\n")
for (i = -vol/2:vol/2)
    xi = xref + (i * 0.0000001);

    ec2 = (4 / pi) * ((exp(-1*a1X) * sin((pi * xi) / (2 * rm))) + ((1 / 3) * exp(-9*a1X) * sin((3 * pi * xi) / (2 * rm))));
    error = 100 * (abs(ec2 - ec1) / ec1);

    x(i + 1 + vol/2) = xi;
    y(i + 1 + vol/2) = error;

    printf("%d\t\t%d\n", xi, error)
endfor

graficar(x,y)

% Resultado encontrado:  x = 0.0634790 [m]

