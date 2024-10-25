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

h = 12                  % [kcal/m^2 h ºC]
alpha = 1.4e-7 * 3600   % [m^2/s][s/h]
k = 0.44                % [kcal/m h ºC]

tf = 0
ti = 5
ts = -15

theta = 20              % [h]

Y = 0.163559

ec1 = (tf - ti) / (ts - ti);

printf("\n")

for (i = 1:30)
    y = Y + (i * 0.0000001);

    xi = y / sqrt(4*alpha*theta);
    ec2 = 1 - fer(xi,tabla) - (exp(((h * y) / k) + ((h^2 * alpha * theta) / k^2)) * (1 - fer(xi + ((h * sqrt(alpha * theta)) / k),tabla)));

    printf("%.8f\t%.8f\n",y,abs(ec1 - ec2))
endfor

