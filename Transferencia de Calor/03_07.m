clear
close all
clc

tabla = [
    0.00, 0.000;
    0.10, 0.112;
    0.20, 0.223;
    0.30, 0.328;
    0.40, 0.428;
    0.50, 0.521;
    0.60, 0.604;
    0.70, 0.678;
    0.80, 0.742;
    0.90, 0.797;
    1.00, 0.842;
    1.10, 0.880;
    1.20, 0.910;
    1.30, 0.934;
    1.40, 0.952;
    1.50, 0.966;
    1.60, 0.976;
    1.70, 0.984;
    1.80, 0.989;
    1.90, 0.993;
    2.00, 0.995;
    2.10, 0.997;
    2.20, 0.998;
    2.30, 1.000;
];

function [y] = fer(x,tabla)
    indice = 1;

    if (x < 0)
        y = 0;
    elseif (2.3 <= x)
        y = 1.000;
    else
        while (tabla(indice,1) < x)
            indice = indice + 1;
        endwhile

        y = tabla(indice - 1,2) + ...
            ( ...
                ( ...
                    (x - tabla(indice - 1,1)) / ...
                    (tabla(indice,1) - tabla(indice - 1,1)) ...
                ) * ...
                (tabla(indice,2) - tabla(indice - 1,2)) ...
            );
    endif
endfunction

function [x] = antifer(y,tabla)
    indice = 1;

    if (y < 0)
        x = 0;
    elseif (1 < y)
        x = 2.300;
    else
        while (tabla(indice,2) < y)
            indice = indice + 1;
        endwhile

        x = tabla(indice - 1,1) + ...
            ( ...
                ( ...
                    (y - tabla(indice - 1,2)) / ...
                    (tabla(indice,2) - tabla(indice - 1,2)) ...
                ) * ...
                (tabla(indice,1) - tabla(indice - 1,1)) ...
            );
    endif
endfunction

Ts = -15            % [ºC]
Ti = 5              % [ºC]
Tf = 0              % [ºC]

h = 12              % [kcal/m^2 h ºC]

ya = 0.3            % [m]
yb = 0.1            % [m]
aa = 1.4e-7*3600    % [m^2/s][s/h]
ab = 9.75e-7*3600   % [m^2/s][s/h]
ka = 0.44           % [kcal/m h ºC]
kb = 0.73           % [kcal/m h ºC]

_ta = 76.2652;

printf("\n")

for (i = 0:40)
    ta = _ta + (i * 0.00001);

    % paso 1:
    xi = ya / sqrt(4 * aa * ta);
    ec2 = 1 - fer(xi,tabla) - (exp(((h * ya) / ka) + ((h^2 * aa * ta) / ka^2)) * (1 - fer(xi + ((h * sqrt(aa * ta)) / ka),tabla)));
    Tab = Ti + (ec2 * (Ts - Ti));

    % paso 2:
    ec1 = (Tf - Tab) / (Ti - Tab);
    tc = (1 / (4 * ab)) * (yb / antifer(ec1,tabla))^2;

    printf("%f\t%f\t%f\t%f\n",ta,tc,Tab,abs(ta-tc))
endfor

