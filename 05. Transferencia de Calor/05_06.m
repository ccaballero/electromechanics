clear
close all
clc

dimensiones = csvread('t_dimensiones.csv');
tabla = csvread('t_agua.csv');

function [DI, DE] = diametroNormalizado(x, dimensiones)
    indice = 1;

    while (dimensiones(indice,1) < x)
        indice = indice + 1;
    endwhile

    DI = dimensiones(indice, 2);
    DE = dimensiones(indice, 3);
endfunction

function [p, u, Cp, k, b, L, n, a, Pr] = interpolar(t, tabla)
    dim = size(tabla);

    for (i = 1:dim(1))
        if (tabla(i, 1) <= t)
            minI = i;
            minT = tabla(i, 1);
        endif

        if (tabla(dim(1) - i + 1) >= t)
            maxI = dim(1) - i + 1;
            maxT = tabla(dim(1) - i + 1);
        endif
    endfor

    if(minI == maxI)
        p =  tabla(minI, 2);
        u =  tabla(minI, 3);
        Cp = tabla(minI, 4);
        k =  tabla(minI, 5);
        b =  tabla(minI, 6);
        L =  tabla(minI, 7);
        n =  tabla(minI, 8);
        a =  tabla(minI, 9);
        Pr = tabla(minI, 10);

        u = u * 1e-3;
        b = b * 1e-4;
        n = n * 1e-6;
        a = a * 1e-7;
    else
        p =  tabla(minI,  2) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  2) - tabla(minI,  2)) );
        u =  tabla(minI,  3) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  3) - tabla(minI,  3)) );
        Cp = tabla(minI,  4) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  4) - tabla(minI,  4)) );
        k =  tabla(minI,  5) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  5) - tabla(minI,  5)) );
        b =  tabla(minI,  6) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  6) - tabla(minI,  6)) );
        L =  tabla(minI,  7) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  7) - tabla(minI,  7)) );
        n =  tabla(minI,  8) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  8) - tabla(minI,  8)) );
        a =  tabla(minI,  9) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  9) - tabla(minI,  9)) );
        Pr = tabla(minI, 10) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI, 10) - tabla(minI, 10)) );

        u = u * 1e-3;
        b = b * 1e-4;
        n = n * 1e-6;
        a = a * 1e-7;
    endif
endfunction

Nt = 17;
DN = 3/4;
l = 1.2;

aD = 2;
bD = 2;

ti = 20;
ts = 100;

v = 0.1;

[DI, DE] = diametroNormalizado(DN, dimensiones);
D = DE / 1000; %[m]

a = aD * D;
b = bD * D;

Pmin1 = 0.5 * (a - D);
Pmin2 = sqrt ( ((0.5 * a)^2) + (b^2) ) - D;
vmax = (v * 0.5 * a)  / min(Pmin1, Pmin2);

_to = 39.04461097;

for (y = -10:10)
    to = _to + (y * 0.00000001);
    tm = 0.5 * (ti + to);
    tf = 0.5 * (ts + tm);

    [p, x, x, k, x, x, vc, x, x] = interpolar(tf, tabla);

    Remax = (vmax * D) / vc;

    C = 0.482;
    n = 0.556;

    Nu = C * (Remax^n);
    h = 0.95 * (Nu * k) / D;

    A = Nt * pi * D * l;
    At = (a - D) * l;

    [p, x, Cp] = interpolar(ti, tabla);
    fm = v * p * At * 3600;

    q1 = h * A * (ts - tm);
    q2 = fm * Cp * (to - ti);

    diff = q1 - q2;

    printf(
        "[%.8f]\t\t -> [%.5f][%.5f][%.2f]:[%.5f][%.5f][%.2f]\t\t -> [%.5f][%.5f]\t[%.5f]\n",
        to,
        h, A, (ts - tm), fm, Cp, (to -ti),
        q1, q2, diff
    );
endfor

